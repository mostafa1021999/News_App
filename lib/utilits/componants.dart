import 'package:flutter/material.dart';
import 'package:untitled/utilits/web_view.dart';

Widget BuildArtical(context, artical) => InkWell(

      onTap: () {
        Navigate(
            context,
            webview(
              web: artical['url'],
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: artical['urlToImage'] == null
                          ? NetworkImage(
                              'data:image/jpeg;base64,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BFj5Dq4VCBU0W6q+CbC2I09VSzulpSyCeKRwa+TMWseHG14+GwV4q4y+ORo4XMcBfguQQF5gOyDN/rVPTO+JY3wZv9ap6Z3xL6fIrPX3hvcVLp5dke8cV1ePbDmITOa9stMAxljeSS+rXq/dqVV+HOgy5iDnBIt938wuq3wJv9apt+M74lzmNYi2oLC1pblBGv7yurW2FzXyulDpCRSgI34UXMBkBawMIaK50O7xWoREXyVYisv+GzjVf+BH+sqNLe6N44+idI5j5GZ2gHa3lhNjfXYi60iY17g1zqDpOpcvJa0kCvUvROyzM9lLAWPcwme12uLTba36rgqKyabOaSDLUXBI8LVcf/dfhU6bOlAEjppADcB8hcAfOA4nWuSmkzOcfrOJ9puvscrbY4Gsgc15qSebupn1qIQumkc54LcqY7+heyNHH5qOjdr76niOvh1xtOv71xGg38ZxX+qf3gKOU2nc0bGMEtQAxjWgCZwbZoA1DNqGpfxFpoWOc9pmY9/hObIQ91zc3cDc69etII7PHHI0zNq8UydhjXoSR0hc0iM809Ixworrsv8AEoucN/Q9RCs0lDCYXulc2M+De8Y81gXff5l+dTpu6UZZHTyNBvZ8hc2/ns48K5bEagSyvkAsHm9jw8C75W2yWZrIHtc68TkciOulDqz1rgQGeUukaQKdPBerdjScSYVRPANnMcRfh8NykOzdxut/nD+iNcphemctPDHC2WcNjFgGSuazhvqAOrhXyY1pH3Ux7XZ3Pdl797sx1EcJJudQssYjExssjpQXPaRShzdjuz61o9r3FjAwgNIxqMgubKwslYXxlciIiIiIiIiusPi4/VlvugUKV1h8XH6st90CsseUvYd6LGb4e0FCkRFGtlZNA+J4Bz+o62nUu0m47Wc5m6xyqOgfE8A5/UdbTqXaTcdrOczdY5X2r3eDc79isIvaP3jyC1izdYRQLdZul1hERZS6wiIiIiIizdYREWbpdYREWUusIiLN0WERFm6XWEREREREREREREREV1h8XH6st90ChSusPi4/VlvugVljyl7DvRYzfD2goUiIo1srJoHxPAOf1HW06l2k3HaznM3WOVR0D4ngHP6jradS7SbjtZzmbrHK+1e7wbnfsVhF7R+8eQWsRF2mjWxtX4lTipp2xmJznNGaQNddpsdVlAt1xaKkbyeLfUh6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')
                          : NetworkImage('${artical['urlToImage']}'),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      '${artical['title']}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Text('${artical['publishedAt']}',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

Widget Seperate() => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.orangeAccent,
            width: 2,
          ),
        ),
        color: Colors.orangeAccent,
      )),
    );

void Navigate(context, Widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));

void navigateandfinish(context, Widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => Widget),(rout) {
      return false ;
},);
