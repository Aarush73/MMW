import 'package:flutter/material.dart';

import './service_detail.dart';
import '../widgets/drawer.dart';

class OurServices extends StatelessWidget {
  static const routeName = '/our-services';

  void newPage(BuildContext ctx, String img, String title, String description,
      String networkimg) {
    Navigator.of(ctx).pushNamed(ServiceDetail.routeName, arguments: {
      'img': img,
      'title': title,
      'description': description,
      'networkimg': networkimg,
    });
  }

  Widget imageBuilder(BuildContext context, String img, String title,
      String description, String networkimg) {
    return InkWell(
      onTap: () => newPage(context, img, title, description, networkimg),
      child: Card(
        color: Colors.black,
        elevation: 5,
        child: Stack(children: [
          Container(margin: EdgeInsets.all(20), child: Image.asset(img)),
          Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline5,
              )),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Our Services',
          style: Theme.of(context).appBarTheme.textTheme?.headline6,
        ),
      ),
      drawer: MainDrawer(),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            imageBuilder(
              context,
              'assets/images/web design.png',
              'Web Designing',
              'The technological wizardry has made it a need to have a presence online. The competition is no longer confined to your street, city or even nation, it is beyond boundaries. To widen your audience, a website is a necessity, rather a good website for that matter. And it does not end here, you ought to have a website which is user-friendly, informative, attractive and a responsive one. Our experts design the website keeping in mind the needs of your business and the expectations of the targeted audience.',
              'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/programmers-cooperating.jpg',
            ),
            imageBuilder(
              context,
              'assets/images/online-marketing.png',
              'Online Marketing',
              'Marketing is the backbone of any business and none can shrug off its value. This certainly is our competitive advantage. To build a rewarding marketing program and maintaining it thereafter, several tools exist online. But a few of them are search engine optimization campaigns, pay-per-click, banner advertising, email marketing, etcetera. These remain different from the conventional marketing strategies because the former ones possess the ability to widen the reach manifolds, globally. Following the online marketing, you can advertise in a very cost-effective manner. You can connect with your targeted audience within a nick of the moment, by diverting traffic the right way, for example, by free listing in various online business directories. Whereas the traditional ways to market the products and services were limited to newspapers, magazines, radios or televisions. Hence, proving the fact that improvising the customer’s experience online through emails, blogs, and many other mediums, is what gives more returns than following offline marketing techniques.',
              'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/online-marketing.jpg',
            ),
            imageBuilder(
              context,
              'assets/images/web-email-hosting_img.png',
              'Web, Email Hosting',
              'Web hosting is actually the space which you purchase on a web server so as to store your site files. Since the competition is neck and neck, and businesses have so many tasks to perform, they are hiring web and email hosting firms for their convenience. There is a belief that registering a domain name is just enough, to begin with, a website. But, it entirely contradicts with the fact that a domain is just like your name, a name to address you. To get a site active and live on the internet, hosting a website is of utmost need.If you too are trying to form a website without availing the web hosting services, just registering a domain name will serve no outcome. Having a web hosting account is essential to get a website hosted. Only a web and email hosting company can assist your way forward to get accessed by everyone on the web. For all these services and responsibilities, you have landed up at the right place. Make My Website is known for its Web and Email hosting services.',
              'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/email-hosting.jpg',
            ),
            imageBuilder(
              context,
              'assets/images/ecommerce-img.png',
              'E-Commerce',
              'Over the years, the usefulness of the internet has augmented manifold. The online technology structure has exposed marvelous growth which primarily includes the growth of Digital Websites. Brick-and-mortar shipping is out of fashion and everyone nowadays choose online shopping as the most convenient way. There are several companies which have a web presence for trading their products and services. If you plan to sell your products with the maximum number of sales and profits, having a presence of the same on the web is going to help you reach your goal',
              'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/Ecommerce.jpg',
            ),
            imageBuilder(
              context,
              'assets/images/seo-service.png',
              'SEO',
              'Search Engine Optimization, often known as SEO is one of the main marketing channels to endorse website exposure via higher visibility in search engines. It is carried out to gain a surge in the website traffic. Search Engine Optimization can be performed in two ways. Either you can optimize by yourself or hire a search engine optimization company for doing it for me. Here, choosing the former option may not be promising enough for satisfactory outcomes, while choosing the latter is the best choice to get a higher rank for your website on search engines, like Google, etcetera.',
              'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/seo-service.jpg)',
            ),
            imageBuilder(
              context,
              'assets/images/content-writing.png',
              'Content Writing',
              'At Make My Website, our experts are well acquainted with all the tactics of content writing, to educate your audience in an efficient manner. Content is one of the most important marketing concepts. Relevant and high-quality content engages more users, giving them the right information about your product and brand. A good content directly communicates with your online customers. In such a scenario, hiring a content writing company can be a boon for your business. You might want to assign this task to one of your employees, but certainly, it would be of no use because writing effective content requires experience and knowledge. However, content writers at Make My Website are result driven and are known for the same. They are well versed with the technicalities involved and are used to working with time restraints and fulfilling deadlines. Your association with our professional content writers will be the one with guaranteed satisfaction and on time delivery.',
              'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/Content-Marketing-Online-Conc.jpg',
            ),
            imageBuilder(
              context,
              'assets/images/social.png',
              'Social Marketing',
              'No matter what you sell and who is your buyer, making use of social media as a marketing device can prove very helpful for growing your brand. Globally, social media is one of the fastest growing industries. And, to increase your brand’s reach and visibility, you ought to make the most out of it. Social Media is the best way to communicate with your potential customers and building healthy relationships with them. Use of extensive social media marketing strategies has led to enormous profits and visibility across the globe.',
              'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/social-service-mmw.jpg',
            ),
            imageBuilder(
              context,
              'assets/images/pay-per-click_img.png',
              'Pay Per Click',
              'If you run a business of your own, you will find unending competition. The world is certainly brimming with companies and businesses. Most of the businesses these days, have a website to attract maximum customers. The best part although is, there are many ways to enhance your business online. There are tactics that can fetch you great outcomes. Pay Per Click is one such way with which you can monetize your website. Make My Website knows how to carry out Pay Per Click and how is it going to help you. Whatever time suits you, just contact us and we will more than happy to address your queries.',
              'https://www.makemywebsite.com.au/wp-content/uploads/2018/11/ppc.jpg',
            ),
            imageBuilder(context, 'assets/images/pay-per-click_img.png',
                'App Development', 'description', 'networkimg'),
            imageBuilder(context, 'assets/images/pay-per-click_img.png',
                'App Development', 'description', 'networkimg'),
          ],
        ),
      ),
    );
  }
}
