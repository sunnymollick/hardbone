<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style type="text/css">
        body {
            width: 100%;
            height: max-content;
            font-family: Tahoma;
            font-size: 18px;
            color: #333333;
            background-color: #FFFFFF;
        }

        table {
            font-size: 15px;
            border-collapse: collapse;
            margin: auto;
        }

        .details {
            width: 100%;
            font-size: 17px;
            margin: auto;
        }

        .top-table {
            height: 80px;
            padding-right: 70px;
        }

        .bill-info {
            width: 300px;
            margin-top: 80px;
            height: 50px;
            font-size: 13px;
        }

        .company-info {
            width: 300px;
            font-size: 15px;
        }

        .details {
            border: 1px solid #ccc;
        }

        img {
            margin-bottom: 10px;
        }


        td.credit-note {
            color: red;
            padding: 30px 0px;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }

        td.description {
            width: 35%;
            font-size: 15px;
            border: 1px solid #ccc;
            background-color: #f2f2f2;
        }

        td.amount {
            text-align: right;
        }

        td.footer {
            font-size: 15px;
            border-top: double medium #CCCCCC;
        }
    </style>
</head>

<body>
    
     
    <table class="top-table">
        <tr>
            <td align="left">
                <table class="company-info" cellspacing="0" cellpadding="2">
                    <tr>
                        <td width="33%"><img height="100px" width="140"
                                src="{{ public_path($company_details->app_logo) }}" /></td>
                    </tr>
                    <tr>
                        <td width='33%' style='font-size:18px; color:red' valign='top'>
                            <b>{{ $company_details->app_name }}</b><br />
                        </td>
                    </tr>
                    <tr>
                        <td width='100%' style='font-size:15px;' valign='top'>
                            {{ $company_details->address }}

                        </td>
                    </tr>
                    <tr>
                        <td width='100%' style='font-size:15px;' valign='top'>
                            {{ $company_details->email }}, {{ $company_details->phone_1 }}
                        </td>
                    </tr>
                    <tr>
                        <td width='100%' style='font-size:15px;' valign='top'>
                            TRN : {{ $company_details->trn_number }}
                        </td>
                    </tr>
                </table>
            </td>
            <td width="150px"></td>
            <td align="right">
                <table class="bill-info">
                    <tr>
                        <td>
                            <table cellspacing='0' cellpadding='5'>
                                <tr>
                                    <td style='background-color:yellowgreen'>
                                        <b>Invoice To</b>
                                    </td>
                                    <td style='background-color:blanchedalmond; color:red'>
                                        {{ $client_details->organization_name }}
                                    </td>
                                </tr>
                                <tr>
                                    <td valign='top' style=' background-color:yellowgreen'>
                                        <b>Customer ID</b>
                                    </td>
                                    <td valign='top' style='background-color:blanchedalmond; color:red'>
                                        {{ $client_details->client_code }}
                                    </td>
                                </tr>
                                <tr>
                                    <td valign='top' style='background-color:yellowgreen'>
                                        <b>Invoice ID</b>
                                    </td>
                                    <td valign='top' style='background-color:blanchedalmond; color:red'>
                                        {{ $inv_data->invoice_code }}
                                    </td>
                                </tr>
                                <tr>
                                    <td valign='top' style='background-color:yellowgreen'><b>Invoice Date: </b>
                                    </td>
                                    <td valign='top' style='background-color:blanchedalmond'>
                                        {{ $invoice_date }}

                                    </td>
                                </tr>
                                <tr>
                                    <td valign='top' style='background-color:yellowgreen'><b>TRN: </b>
                                    </td>
                                    <td valign='top' style='background-color:blanchedalmond'>
                                        {{ $inv_data->trn }}
                                    </td>
                                </tr>

                            </table>
                        </td>


                    </tr>
                </table>
            </td>
        </tr>
    </table>
<br>
    {{-- <table width="100%" align="left">
        <tr>
            <td width="50%" align="left">
                <table border="1" >
                    <tr>
                        <td bgcolor="yellowgreen">Bill To</td>
                    </tr>
                    <tr>
                        <td>
                            {{ $client_details->organization_name ?: "N/A" }}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            {{ $client_details->address ?: "N/A" }}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            {{ $client_details->email ?: "N/A" }}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            {{ $client_details->phone ?: "N/A" }}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            TRN : {{ $client_details->trn ?: "N/A" }}
                        </td>
                    </tr>
                </table>
            </td>
            <td width="50%"></td>
        </tr>
    </table> --}}

<table width="100%" cellspacing="0" cellpadding="0">
    <tr>
        <td width="50%" align="left" valign="top">
            <table border="1" cellspacing="0" cellpadding="5" style="width: 100%; max-width: 400px;">
                <tr>
                    <td bgcolor="yellowgreen" style="font-size: 15px;"><strong>Bill To</strong></td>
                </tr>
                <tr>
                    <td style="font-size: 14px;">
                        {{ $client_details->organization_name ?: "N/A" }}
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 14px;">
                        {{ $client_details->address ?: "N/A" }}
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 14px;">
                        {{ $client_details->email ?: "N/A" }}
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 14px;">
                        {{ $client_details->phone ?: "N/A" }}
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 14px;">
                        TRN : {{ $client_details->trn ?: "N/A" }}
                    </td>
                </tr>
            </table>
        </td>
        <td width="50%"></td>
    </tr>
</table>

    <br>
    <h3 style="text-align:center;text-weight:bold;">Invoice Title : {{ $inv_data->title }}</h3>
    <table class="details" cellpadding='5'>
        <tr>
            <td width='35%' bordercolor='#ccc' bgcolor='yellowgreen'
                style='font-size:15px; border:1px solid #001a00;'><strong>Description
                </strong></td>
            <td bgcolor='yellowgreen' style='font-size:15px; border:1px solid #001a00;'><strong>Qty</strong></td>
            <td bgcolor='yellowgreen' style='font-size:15px; border:1px solid #001a00;'><strong>Unit</strong>
            </td>
            <td bgcolor='yellowgreen' style='font-size:15px; border:1px solid #001a00;'><strong>Unit Price ({{ $currency }})</strong>
            </td>
            <td bgcolor='yellowgreen' style='font-size:15px;border:1px solid #001a00; text-align:right'>
                <strong>Subtotal ({{ $currency }})</strong></td>

        </tr>

        <tr style="display:none;">
            <td colspan="*">
                @foreach ($groupedDetails as $category => $categoryDetails)
                    @php
                        $categoryTitle = $categoryDetails->first()->category->title;
                    @endphp
        <tr>
            <td colspan="5" style="background-color:blanchedalmond;font-size:14px; border: 1px solid #001a00">
                {{ $categoryTitle }}
            </td>
        </tr>
        @foreach ($categoryDetails as $info)
            <tr>
                <td valign='top' style='font-size:14px; border: 1px solid #001a00'>{{ $info->item->item_work }}</td>
                <td valign='top' style='font-size:14px; border: 1px solid #001a00'>{{ $info->quantity }}</td>
                <td valign='top' style='font-size:14px;border: 1px solid #001a00'>{{ $info->unit }}</td>
                <td valign='top' style='font-size:14px; border: 1px solid #001a00'>{{ $info->unit_price }}</td>
                <td valign='top'
                    style='font-size:14px; border: 1px solid #001a00; text-align:right; padding-right:5px'>
                    {{ $info->total_price }}</td>
            </tr>
        @endforeach
        @endforeach
        @if ($inv_data->grand_total)
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td style='font-size:14px;;'>Sub Total</td>

                <td style='font-size:14px;; color:tomato; text-align:right; padding-right:5px'>{{ $currency }} {{ $subTotal }}
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td style='font-size:14px;;'>Discount (-)</td>

                <td style='font-size:14px;; color:tomato; text-align:right; padding-right:5px'>{{ $currency }} {{ $discount_amount }}
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td style='font-size:14px;;'>Tax (+)</td>

                <td style='font-size:14px;; color:tomato; text-align:right; padding-right:5px'>{{ $currency }} {{ $tax }}
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td style='font-size:14px;;'>Grand Total</td>

                <td style='font-size:14px;; color:tomato; text-align:right; padding-right:5px'>{{ $currency }} {{ $grand_total }}
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td style='font-size:14px;;'>Paid Amount</td>

                <td
                    style='font-size:14px;; color:tomato; border: 1px solid #001a00; text-align:right; padding-right:5px '>
                    {{ $currency }} {{ $inv_data->paid_amount }}</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td style='font-size:14px;;'>Due</td>

                <td
                    style='font-size:14px;; color:tomato; border: 1px solid #001a00 ; text-align:right; padding-right:5px'>
                    {{ $currency }} {{ $due}}
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td style='font-size:14px;;'>Payment Method</td>

                <td
                    style='font-size:14px;; color:tomato; border: 1px solid #001a00 ; text-align:right; padding-right:5px'>
                    {{ $payment_method ?: "N/A" }}</td>
            </tr>
        @endif

    </table>

    @if ($inv_data->bank_details)
        <br>
        <br>
        <table width='100%' cellspacing='0' cellpadding='10' border='1' bordercolor='#CCCCCC'>
            <tr>

                <td width='35%' bordercolor='#ccc' bgcolor='yellowgreen'
                    style='font-size:14px; border-right: 1px solid gray'><strong>Bank Details
                    </strong>
                </td>

            </tr>
            <tr>
                <td valign='top'
                    style='font-size:12px; border-right: 1px solid gray; border-bottom: 1px solid gray; border-top: 1px solid gray'>
                    {{ $inv_data->bank_details }}</td>
            </tr>
        </table>
    @endif

    <table width='100%'>
        <tr>
            <td style='font-size:12px;text-align:justify; height:50px;'></td>
        </tr>
    </table>
    <table width='100%' cellspacing='0' cellpadding='2'>
        <tr>
            <td width='33%' style='border-top:double medium #CCCCCC;font-size:18px; color:red' valign='top'>
                <b>{{ $company_details->app_name }}</b><br />


            </td>
            <td width='33%' style='border-top:double medium #CCCCCC; font-size:15px;' align='center'
                valign='top'>
                <strong>{{ $company_details->address }}<br />
                    @if ($company_details->address_secondary)
                        Second Address: {{ $company_details->address_secondary }} <br />
                    @endif
                    Phone: {{ $company_details->phone_1 }}<br />
                </strong>

            </td>

            <td valign='top' width='34%' style='border-top:double medium #CCCCCC;font-size:14px;'
                align='right'><br />
            </td>
        </tr>
    </table>
    </td>
    </tr>
    </table>
</body>

</html>
