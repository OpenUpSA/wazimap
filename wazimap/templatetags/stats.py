from django import template
from django.template.defaultfilters import floatformat
from django.contrib.humanize.templatetags.humanize import intcomma

register = template.Library()


@register.simple_tag(takes_context=True)
def statvalue(context, value, decimals=None, stat_type=None, isnumerator=False):
    if decimals is None:
        decimals = context.get('decimals', -1)
    if stat_type is None:
        stat_type = context.get('stat_type', "number")

    value = intcomma(floatformat(value, decimals))
    if value.endswith(".0"):
        value = value[:-2]

    if stat_type == "dollar":
        # TODO: currency symbol
        value = "R" + value
    elif stat_type == "percentage" and not isnumerator:
        value = value + "%"

    return value
