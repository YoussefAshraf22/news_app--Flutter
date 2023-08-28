import 'package:flutter/material.dart';
import 'package:news_app/widget/component_widget.dart';

import '../models/article_model.dart';

class BusinessView extends StatelessWidget {
  const BusinessView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ArticleModel> components = [
      ArticleModel(
        title:
            'عقب تراجعه 175 جنيه للجرام.. هل تواصل أسعار الذهب الانخفاض خلال الأيام المقبلة؟',
        content:
            'تشهد أسعار الذهب تراجعًا خلال الفترة الحالية، حيث تراجع سعر الذهب عيار 21 من 2425 إلى 2250 جنيه، وذلك في ظل الأيام القليلة الماضية.',
        img:
            'https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8=',
        urlOnTap:
            'https://amwalalghad.com/2023/08/15/%D8%B9%D9%82%D8%A8-%D8%AA%D8%B1%D8%A7%D8%AC%D8%B9%D9%87-175-%D8%AC%D9%86%D9%8A%D9%87-%D9%84%D9%84%D8%AC%D8%B1%D8%A7%D9%85-%D9%87%D9%84-%D8%AA%D9%88%D8%A7%D8%B5%D9%84-%D8%A3%D8%B3%D8%B9%D8%A7%D8%B1/',
      ),
      ArticleModel(
        title:
            'عقب تراجعه 175 جنيه للجرام.. هل تواصل أسعار الذهب الانخفاض خلال الأيام المقبلة؟',
        content:
            'تشهد أسعار الذهب تراجعًا خلال الفترة الحالية، حيث تراجع سعر الذهب عيار 21 من 2425 إلى 2250 جنيه، وذلك في ظل الأيام القليلة الماضية.\nويسجل سعر الذهب عيار 24 نحو 2571.5 جنيه، فيما سجل عيار 21 نحو 2250 جنيه، بينما بلغ سعر الذهب عيار 18 نحو 1928.5 جنيه،',
        img:
            'https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8=',
        urlOnTap:
            'https://amwalalghad.com/2023/08/15/%D8%B9%D9%82%D8%A8-%D8%AA%D8%B1%D8%A7%D8%AC%D8%B9%D9%87-175-%D8%AC%D9%86%D9%8A%D9%87-%D9%84%D9%84%D8%AC%D8%B1%D8%A7%D9%85-%D9%87%D9%84-%D8%AA%D9%88%D8%A7%D8%B5%D9%84-%D8%A3%D8%B3%D8%B9%D8%A7%D8%B1/',
      ),
      ArticleModel(
        title: 'عرض شاشة الاندرويد على التلفاز بالخطوات',
        content:
            'عرض شاشة الاندرويد على التلفاز بالخطوات\nيعد عرض شاشة الاندرويد على التليفزيون الذي نقدمه لكم اليوم من خلال موقعنا الالكتروني زيادة كما هو الحال مع التطور التكنولوجي الحديث ومع التطور في مجال الوسائط المتعددة ومع تطور الحياة وتشجيع الرفاهية وحياة ممتع',
        img:
            'https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8=',
        urlOnTap:
            'https://www.mogazmasr.com/technology-news/252746/%D8%B9%D8%B1%D8%B6-%D8%B4%D8%A7%D8%B4%D8%A9-%D8%A7%D9%84%D8%A7%D9%86%D8%AF%D8%B1%D9%88%D9%8A%D8%AF-%D8%B9%D9%84%D9%89-%D8%A7%D9%84%D8%AA%D9%84%D9%81%D8%A7%D8%B2-%D8%A8%D8%A7%D9%84%D8%AE%D8%B7%D9%88-2',
      ),
      ArticleModel(
        title:
            'عقب تراجعه 175 جنيه للجرام.. هل تواصل أسعار الذهب الانخفاض خلال الأيام المقبلة؟',
        content:
            'تشهد أسعار الذهب تراجعًا خلال الفترة الحالية، حيث تراجع سعر الذهب عيار 21 من 2425 إلى 2250 جنيه، وذلك في ظل الأيام القليلة الماضية.\nويسجل سعر الذهب عيار 24 نحو 2571.5 جنيه، فيما سجل عيار 21 نحو 2250 جنيه، بينما بلغ سعر الذهب عيار 18 نحو 1928.5 جنيه،',
        img:
            'https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8=',
        urlOnTap:
            'https://amwalalghad.com/2023/08/15/%D8%B9%D9%82%D8%A8-%D8%AA%D8%B1%D8%A7%D8%AC%D8%B9%D9%87-175-%D8%AC%D9%86%D9%8A%D9%87-%D9%84%D9%84%D8%AC%D8%B1%D8%A7%D9%85-%D9%87%D9%84-%D8%AA%D9%88%D8%A7%D8%B5%D9%84-%D8%A3%D8%B3%D8%B9%D8%A7%D8%B1/',
      ),
      ArticleModel(
        title: 'عرض شاشة الاندرويد على التلفاز بالخطوات',
        content:
            'عرض شاشة الاندرويد على التلفاز بالخطوات\nيعد عرض شاشة الاندرويد على التليفزيون الذي نقدمه لكم اليوم من خلال موقعنا الالكتروني زيادة كما هو الحال مع التطور التكنولوجي الحديث ومع التطور في مجال الوسائط المتعددة ومع تطور الحياة وتشجيع الرفاهية وحياة ممتع',
        img:
            'https://media.istockphoto.com/id/1313303632/video/breaking-news-template-intro-for-tv-broadcast-news-show-program-with-3d-breaking-news-text.jpg?s=640x640&k=20&c=S0dTZp37XKVcCAnoguMnRatvv4Nkp2cjmA5aYOOrJs8=',
        urlOnTap:
            'https://www.mogazmasr.com/technology-news/252746/%D8%B9%D8%B1%D8%B6-%D8%B4%D8%A7%D8%B4%D8%A9-%D8%A7%D9%84%D8%A7%D9%86%D8%AF%D8%B1%D9%88%D9%8A%D8%AF-%D8%B9%D9%84%D9%89-%D8%A7%D9%84%D8%AA%D9%84%D9%81%D8%A7%D8%B2-%D8%A8%D8%A7%D9%84%D8%AE%D8%B7%D9%88-2',
      ),
    ];
    return SliverList.builder(
      itemBuilder: (context, index) =>
          ComponentWidget(article: components[index]),
      itemCount: components.length,
    );
  }
}
