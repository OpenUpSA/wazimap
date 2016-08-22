from django import template
from django.utils import formats
from django.template.defaultfilters import floatformat
from django.contrib.humanize.templatetags.humanize import intcomma

register = template.Library()

CURRENCY_SYMBOL = formats.get_format('CURRENCY_SYMBOL')
if CURRENCY_SYMBOL == 'CURRENCY_SYMBOL':
    CURRENCY_SYMBOL = '$'

DECIMAL_SEPARATOR = formats.get_format('DECIMAL_SEPARATOR')
DOT_ZERO = DECIMAL_SEPARATOR + "0"


@register.simple_tag(takes_context=True)
def statvalue(context, value, decimals=None, stat_type=None, isnumerator=False):
    if decimals is None:
        decimals = context.get('decimals', -1)
    if stat_type is None:
        stat_type = context.get('stat_type', "number")

    value = intcomma(floatformat(value, decimals))
    if value.endswith(DOT_ZERO):
        value = value[:-2]

    if stat_type in ["dollar", "currency"]:
        value = CURRENCY_SYMBOL + value
    elif stat_type == "percentage" and not isnumerator:
        value = value + "%"

    return value
