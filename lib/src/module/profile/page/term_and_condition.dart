import 'package:flutter/material.dart';

class TermAndCondition extends StatelessWidget {
  const TermAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text(
            'TheShoe Terms and Conditions Policy',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
          ),
          Text('''

Welcome to TheShoe These terms and conditions outline the rules and regulations for the use of TheShoe’s Website.

TheShoe is located at: , (Address).

By accessing this website we assume you accept these terms and conditions in full. Do not continue to use TheShoe’s website if you do not accept all of the terms and conditions stated on this page.

The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and any or all Agreements: Client, You and Your refers to you, the person accessing this website and accepting the Company’s terms and conditions. The Company, Ourselves, We, Our and Us, refers to our Company. Party, Parties, or Us, refers to both the Client and ourselves, or either the Client or ourselves.

All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner, whether by formal meetings of a fixed duration, or any other means, for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services/products, in accordance with and subject to, prevailing law of (Address).

Any use of the above terminology or other words in the singular, plural, capitalisation and/or he/she or they, are taken as interchangeable and therefore as referring to same.

Cookies

We employ the use of cookies. By using TheShoe’s website you consent to the use of cookies in accordance with TheShoe’s privacy policy. Most of the modern day interactive websites use cookies to enable us to retrieve user details for each visit.

Cookies are used in some areas of our site to enable the functionality of this area and ease of use for those people visiting. Some of our affiliate / advertising partners may also use cookies.

License

Unless otherwise stated, TheShoe and/or its licensors own the intellectual property rights for all material on TheShoe.

All intellectual property rights are reserved. You may view and/or print pages from (Add URL) for your own personal use subject to restrictions set in these terms and conditions.

You must not:

Republish material from (Add URL).
Sell, rent or sub-license material from (Add URL).
Reproduce, duplicate or copy material from (Add URL).
Redistribute content from TheShoe (unless content is specifically made for redistribution).
Disclaimer

To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website (including, without limitation, any warranties implied by law in respect of satisfactory quality, fitness for purpose and/or the use of reasonable care and skill).

Nothing in this disclaimer will:

Limit or exclude our or your liability for death or personal injury resulting from negligence.
Limit or exclude our or your liability for fraud or fraudulent misrepresentation.
Limit any of our or your liabilities in any way that is not permitted under applicable law.
Or exclude any of our or your liabilities that may not be excluded under applicable law.
The limitations and exclusions of liability set out in this Section and elsewhere in this disclaimer:

are subject to the preceding paragraph; and
govern all liabilities arising under the disclaimer or in relation to the subject matter of this disclaimer, including liabilities that arise in contract, tort (including negligence) and for breach of statutory duty.
''')
        ],
      ),
    );
  }
}
