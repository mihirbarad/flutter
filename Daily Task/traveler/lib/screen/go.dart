import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class bhavnagar extends StatefulWidget {
  const bhavnagar({super.key});

  @override
  State<bhavnagar> createState() => bhavnagarState();
}

class bhavnagarState extends State<bhavnagar> {
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(-100 / 360),
                        child: Image.asset(
                          'assets/design.png',
                          height: 150,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Welcome \n\t\t\t\t\tto \n\t\tBhavnagar",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 34, 151, 174)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(85 / 360),
                        child: Image.asset(
                          'assets/design.png',
                          height: 150,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    items: [
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBIVFRgRFRQYGBgYHBgYGRoYGhgcGhkZGBkZGRgcGBkcIS4nIR8rHxoYJzgmKy8xNTU1GiQ9QDszPy40NTEBDAwMEA8QHxISHjQrJCc0NDQ2NDQxNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIALoBDwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAABAAIDBAUGB//EAEcQAAIBAgQEAwUEBwYCCwEAAAECEQADBBIhMQUiQVFhcYEGEzKRoRRCsfAzUmJywdHSByOCkuHxFUM0NVNjg6Kys8LD4iT/xAAYAQADAQEAAAAAAAAAAAAAAAAAAQIDBP/EACMRAAMBAAICAgIDAQAAAAAAAAABAhESIQMxIkFRcSMyoWH/2gAMAwEAAhEDEQA/ANnJQKUopwmtjEaBRyVKvlTslGjwrFKWWpypppWjRYQxSipYoU9FhHFKnkU2KABSoxQigBRSilFKgBRSijSigBtKKMUooAFKjFKgAUqVKgBRSozQoAFKjQoAEUqNKgBsUqNCgAUqNCgAUKdQoAtA09TTKcDUlEgNOBpgalSGSUoptICkMRSgUo60oNMQwpTClSxSinosIYoRU2WmlKeiwiilFSFaaRRoDYoRT6bTEClQzaxH58qdST0bQIoRTqVMQ2KUU6hQAIpRRpUANilRpUACKVGlQA2KUU6hQA2KUU6hQA2KEU+hQBYpRRpVBQKM0qNACDUcxoAUqAHB6OemURQMeDSmmg0QaQBmgTSNA0wCRTStGKarEkjt+f5UaGAK0Ip+tLLT0WFfUMSTy8oUQPiJM+Pb5VJFNxQAWSyiCpOYxoGUzuPrTlYESCCDqCNQR4GomtbRdT0mCKUU6gT51emeDYpRTopUwGxSinRSoAZFKKfSoAZFCKdSoAbFKKNKgARSijQoAEUoo0qALOUUSlNog1BYstCKNGKNDCG6kj1H1MfxqQio8RazZRGzK09spzfiAPWnSc0QYidtN43pOkn+x8dQaVGjTJwbRoxSijQwE0poxSigATUKKVMSTmLMZ76aDwjpU4FRXp5GCOObKSfd/D1M59E8d9Nqi6U4aRLrSSiKCaiR9aci61TazSFL3AYi25V1zqARyg21bKQQZYlubY9t6hw6FQqEqcqKOVQgkFg0KCQB8Ogqxd7QTp08T29fpUTtBHnH+Zc34j61zeOnzOvySuAStRuDoQdtxAM6ab+MVNNFRqBlYhjGgUgbatmI08prot4mcsLaRChkA9wD86MUzDZssMGBBI5goMCIMKTpr9KlinNKloqly8Y2lFGKUVWiGxSo0ooAEUqMUIoAjuAxpM6bRI131pwFB9SF3GhMSDv3HoY8DToqZrWyqnEgUKdFKKokbSo0KAJqVGlSGKiKFKgBO+USZ9BMdST4aVVuYq0Hzgn4CzEq4hBu2o0+Hbc6b6TZZtR5/wC9LFuCCsyIgiehEQfRq5vJWV+jq8cJz+xwIOo60qpcJuFrSgnVJQ+aHLr6AH1q7NdCenM1jwdSplKgQadTZpTTAcB17a0boOTzIjTToP40lHKT5Dr+e1R4sA6QJmFMDQgd/AxXL5a2s/B1+GcnfyC02rL2P0YA/jm+VSj86kfON/KsTC4rNfRthcsKY/aVmP0BNbikBSxOm502idZ9Kp1/H/hCn+T/AEr44A6kCFR9SBHMFiD5Bht18ayMfiMlt1XT3bWXAEjlLJO22zDToK3cT8BcK+UrJZAuojYayflXI4+4MtwFHTMigC4uUko+YR3ME/KsY96bV6OsNFScwA7D6n/as/gmINyyjHf4T5jT8IPrWnABOkzA110jx8BW3mrpIy8M9tlctr56ayPzvT6zsewGZEAGZbsRoQ6gRt1/pFXcPczor/rKG+Ymq8L6wnzrtMfSo0K10wwFKlSphgqSqSYFA1Ywg1Z/1VJ9ToPxpVWJscTypIp4i5bGU++QmTbADTzsZyqIjNI6/Sng1edzlX017E9Qe+9Uc0/nr1rDw3raN/NGJMVKlQmug5w02lNKaAJaNNo1JQYoxTZozQBDecKymJgE9NyYH8Kg4ncCc7FiCVUzECYE7d4+dT3gc4gCN9zPKRqFjUSRr+Ri+0V2FKkRnBO0cyFCD8s30rjb5UdqXGSTgl4i9etHbMXA9dfxHyrcrkcI7piucZWnmAM6FARr8jXXTXRFdYcvkn5aKmXnyqWgmO29AOZJI6gDx0G3z+laFjAuQGJjt38KdWkgUNtFMUqlfC5ATnzSSdQARJ20HeaZaeCGjNHTvQrTnROGqwe+iaAsZGiwZ16T51j+0ON92LZABMtG2kZW39IjxNahfNqRlBgwCdMpJDaGBMCsXiONuuWs+4DgoWBlj90kQMsZtPPauXdrTrzJxFPC5m90yK0q+gyjmXOfhO5+ONP413WHwOUSxBJ0A6T29O/gaxuCcEuWEDO4zjVeuQEgsPMk9P510dm8jtp91duxOn4T86pv6El3pSxWHQdAY5jyliSCukbj/SqiWLN21LJAHK4IdNhExoSPxrauW1jbqB84J+lZWJxCqDoNSwMASY/0/hUFGdZ4cLAKoSUDZoJ1GmnNOokD+NT2boM6ETEEwASULQp6kA03CWmxCAqRA5STsQCyFfHlCn1BqXHYa4is6FW65CSoYhfUSYptt+xJJejlMXxDNiCgUmLjKMoEkkOjaeq/Lxq17MYmbQtmcylo0O0gnXwLfUVQvG7iGRxa903OcwzFjlIHMYB8p71PhUdMSyzsR1OoeBsfL/yitoeMy8i1HRU0vqB4E9OkevXy+lOAnQVo2+GuBrAJEeInTt+YrW64oxiOTM6hU1/CsgGubx6+oiq6EwJEHznfXemrT9CcNex1To0I/wC0J8dCBv6npVYnXY7Md9NOh+f0qxi/hCrBOSYzAffUk/hWfmrrDXwz8tDiToFDEQFMwp1I8V7GPU1mpiQXKdy/oVK6fIzWi/wEHoRm/wAIXSRXIpiXGIzAcnvVRmkQHZMjLG+6z6Vj4/7abeVfHDp6bSpV2HGKhSpUAS0qbNGpGGkzEAkCSNQCYkjbWDHyoTTXfKC0Exry7+mopV6HPsZiSA5gJMplzgnVzDDQjTY6VyRxhxAFx0UZrVwgoX+65AmSdJBHrWg/GbGaS9ydN0Xrp1f8+O1VbuKw0/pbvwuDnRToY2PvBERXKlh1jOPW1S+twcwdUJBMAkQp76RlrtMKiu621EaEkicoC/FE9J0A8RXI4k4O7kZ7t4ZFEZUSI035j2rZfjWEA1zxPVDOp8GFVyazCXKe6bLm3nByg5DpLjXxjbtVx+JdYX/OO3+1crc4xgtXJvAHX4Lf0kE1Fb45w9jAe5rp+jt7jU/cqXrK6RvYmXGXOo0I3HUzO/SosNZKIELgkDeQN/WsduPcPGhe4On6O16/cqVeK4GMwa6RvPu7Mbfu0LkvQPi/ZtW7aBMhYE6DMSpO2/nvr5edMwye7yj3hMRGjsPkJFYy8e4eQSr3OXf+7t6b78nn8qcnHrWUkYcsFAYkuFJUxDQiga1OMeo6J8ZO7fK2/ee3lWfdxSI0rJJ1+NUMa6Q5BH4Vkv7S2sp//nyyOXNdOvjG8fKpH47iFDQlpckFhlY6E6a5h0/A08YajRXic6kt3/S2v66BxakaqT1/S2e0dXrGw/tZiXJiykAgSUYadxLdqfd9qcSAGFlCCRBCMdxoSA21GC01DxW3aGcKFAI3e2wE6TlVpnpygmrH2xLi6uCDGoV9dIn4fE/OsPEe0l0oGNuyyvKhTbbU9QebwPyNVcJxu0hYHDzr8Nt2ULGjQubbroPSjA03kt2xcRs+bKroF5tQch+9H6v18KhThFv3xv5jPRAAFGgA2J7T/i8Ky8bxXDOgz4d4+JYukwR96GkdTuDUVvjPDlVWd3UsJA91ab5Rb8vnTXJdoHxfTOuwjhHDlZiYGm/Q1ffiQJ0UjUdRsPya48cSwEFs7wOptWo/9FMTjPDjoLrHUbWLfX/BRTqvYSpn0dDjFuONDG/Tvr3/ADNG6ihS2VpCiTMglR0Xp12rnn41w5SQbzyNP0Nvf/JU9viWBIDh3Ze/ubQ+cJIoXJdg+L6OjtYe37vOvOSs7wpkAgAxtrvrVR2LIXcFCy/BmJXp5RoOlZdjj2Gg5br5Z2CMNBoAd560y/xnDtOW4yyBp7tz03+IUPW9YTiWIs8YxzWlGRVeXRCCWBh5jUbiVbTxrFw2FS5adVZ0fV0WSQr23MENpoZA8NamucRw7Ar71xqrcqODMaTLnTsOlVMNjbCMT79jIfU2rh0Zgxnn7j1prpCfZ0dpiVBO5AJ9RRplkAKAswAAJmYGgmdfnT66kcgKVKmXLyrqzAeZijQw5/hntG5MXQMs/GBEaE6j5bdO9dIbqxIMiQOXXfYmOnjXm2CvoGy3idILOpzhonYEiZ0610WE4xYyiwj3AAYA92g31+Iv41iqZrMy+2zqqRDwciZyBOXNlmN+aDFc9heKpac2mdyi5hzBJVgVJ5g5zDnAjp6GNrg/Ebd4uqFpCNIgqRJiQfMd6qq6JU/LDFfFuW/6C8yv/Mv9SY2TvUPErgBAuYQjleP766RqBMEIRNaWJvWkZmICBWtpmUlTuxYqFE9Y03rDt3M6ljcdylm5mzuW5mKg5SZj4gZ8KwTR0P8ABZw2JUAhMGx5RMXL20nfk86vYi+8DNhGMkae9uEz0kBCR61Ky2kzjIuiIBzH72aTpMbGT4VWt2br4m/aa65RLtsKHZmSMoJ0bejdHmGZx+0ECMUAhFyISxAJ6H4SY11IG9c9e4wACqKEUrlIA0k5szAjUEz411vtwwNqyQABDaCNOUaaVx/GbKj3RAjNZtMfEkQT9K0nGjOtTJU42GkPbVySMggEA6jbckz33rfvYVUwyEoUks+R1YZW/Vhvu5pMVnN7NhcxtuZWWWdCCpSNR5/QVtYm3c+wOt0sXV2BLksw20JaT/vSbX0NJ/ZyWJ40VICKqhdhAMaZTHcEfjXT8G4jbxOHeFYXFREeFnMpPKZG40PiNdNJrz3EDWuw/s7Yj7RETFnLtvmcbEHuaqpXHSJp8sMLjuLJuHKxjp/AV1/BceuIwjyrMyKiXCSJZVUmTpqplmg66HWsH2l9kb+H58y3JCswTNK5hm1BGoEjUfIDWrXsYB9mxkROVI7wVfNHyFOp+ITW1hkY7j7kZU0AzjTsxgfSpMBx9xyndsqDwUb1jrgrmVrmRsilQ75WyqWjKGaIBMj51B1mnxXonk/Z6VxjEqmETEZCVkmVgczMV6g6HXXw8jXEcIxRDhmbrJ8a6v2l/wCq7Mdxm8s7RPrFcLhPjFTMriy7p8kdvxviFu3bRgpzBXROU6hobc+QM+XnXOYfirMSHAYMeZYAB5Qok+gOnar3th+jsa9+vZQNulc3hzqKqUuIqp8jt7yW0wa3GjKzF8v6zKFhPIN0ntpWL/x1Vj3dtV3LaABidJHUGBV/FycDknQuh9Qa5Rk/PoP50plP2FU16N/D8XRgFdAwAEdOZSoVmJknQQa6HAWFOGu3EAUsQrrJhSZnKNYkZfA7Vwtha9G9nrc4O8N5joP1BU0khw2zPwdl1BdEJCSTpp6jJWrZx6EcuEduXWDP/wBP0p9yxetPYtpddFc4mQhj4EzLMdZmruEtqqc6IzBJJB5j/hA31HN/rUtlpFTD4jMSBg32U6vl0gxqbQFZgxWHD5vszhhmPxgdZ29yPSt3F4Z4ItFrTD3IJtuScrByRBAmIOp1NVMJhlLk3CWI+0sGLHNCOqy0DUyDHroaE0Npm0+HvBS2RYAmPeTsJ3yCo0cncEbd41E6HrUmK4mLVpEAcEoGEgvCgIpkkiYLqNddflk38Y5VbhdspKQQg1zkBdMxMEsB61U3RNeOc94zTdwBJIAG5Nc/xPiNvNmADCAGB7dCBtvpqJqbi2MR7DRv2IgmCQSFJ6Hv261zNqzJJAEd5kbDQ+oNHkv6MVOGdefQXA4BBkTHMRsYjwJ3M9JmtPB4zDgK7XLSsBBzo5MgQTohEeprOxCPl1UwBBWWK5jEZo+9LKJkzlB71UtoFdCytk0hm216jpv23FJZgpribuOdSeXKY3IBALGDMMAQJHUdOtR8O4g+HdbqQNAhBKhWUmWEHwMie3zgL7tp+r4yR1/nFQXUmScpM9I5Y1IEdwD5z4RUIOT3TY4zikuO3u25OjRkzE6EmO8jx38ap4PF+5YyCUY5Hyno0zlzAgsGKwfCqFnEEMRqFOonuddREnSn3XBOksYOgJiIMlTsBqB0maaWBye6aWD4hlvB3ZmRy2bUHKpiHEgiRvsTv5V3n2XUH+9Oub9JIMxIjJEV5TavTnU6xrsdtzox2nx/lXofs3j/AHuHQ5HZllHKiRmUAbg9iD60qTSNvFW9Mt8X4OuICIwdQmgyldiI/U8Kzcd7JW3Cg++5ECAqybINJ5NzXQK/X3F7SD8J6Dzqq95SpT3d8SInI0/MnSkqZq5RBg+Doq5IuaApLEEn4ZM5O4rS4rglxCurq65zJyMN4UdUPT8KgNxAuiXte6tO8nr6U4X1JEpfGu+VtBttPSjWGI5u97AYbfNfM/tW5/8Abo+xvBVR8WqlsquLSs2hOQHNtE6sdfKvSLfAhAbOToDqOkDoWrK4Jwa26M63JzuznMJInYSPDX1q/lnZlsJ6cFicVcx7OGYWWsKrcuZgwVchG4jSak9gMEWtXnKlRcZwAZEqqqBAkfrsK7HCexBts5TEwLgKkZPukkxJnvVmz7JohVC4fR2llgnVB0irptoieKenm2A4ulrCX8G5cPdZhlgka2wjZjMAghdOuWuU4fyXJdM4AYAEaT90+f8AOvWx/ZnbJzfaNQ7NOTUhp0+ZqR/7N1YQcQ0afc7VbrScRk8b4ZPDCoBLLbR413Vg50mNs3SvOGwmW6FAIGW2ev30Rj9WNe84j2WV7ZtZwJTJOUzsBPnpWA3sIHd1OIPIEX4BqMoAP0qI1J6XbTaw43j1sLbtvPwMM0gGAyETHnlHrUnsz7LWL9t7pNwHNlhMkAQGBXMpjc6eArtcT/Z2txCjYhoMfcPQzWrwT2O+zo9sXc+Y5gcpGUwBoJA6UnqXQ05b7OWf2StFPcZ7pWSZzJPKRH3Opnp0rPb+z6x+tf8A8yeH/d13HFOFph7T3ndyqx0M8zAAaN3IE9KxFuKdrd/r9w9dvvdKnlSLUzRhr7BWRs187/fTp/4dbOD4aLVp7QS4Q41JZcw0yiISKto6zPu70funaIg81VuJ3AELj3qZYbVDlgGSuXN1ECpdN+ylKXoKYAABf78DUctxVHNvsn1opw22JOW6ZADSbctEEFuTU6CoMFxVHUMtm8dphS0EDUSDVxccv/Y3+n/LfvJ2pax4gHAKBmnEA8s5WQFisgE5UE+tQf8ACQW+JyJdTnKsSCM0TlMgEHejiuLhChyXApkNmVwV3hgJ18qZe4zbRoAZieYhxquaApGfZQNOm470axPCtxXEXB/dvkQKrouhHJKzv0GVNvCsf/iVr3K2Des5lKQ4dQQLbow5Sd+SJ+lWOOcWDw+QqAHXKYGcNuBEQ3KPrXNrhlyIpEEAjU6/EzScup3PpWkvERdJm293AtzNfQ6EfpNBOpgKOuvzNR4n7IFAS9atyc08/MCP3PLWs/hns818F7Vt3VSc5gmOTKc06jfN4RQv8NcD3fu2Z1KhuUFpVYOYHY9eu/jNKuJLtZ6RnEcrFgOqhVhVV2MgnWQBkJPeD2qpedcozaDQKB8URJaJg+Z6mnvdO0nOSGAYqoJ0EgiJ67dqz7jrsJbbmPYAjaO/j6VcyYGpg7pZI3YSASSTtKn5kecmp2WNeYkxqBElgYKtEjXNAGpnSsrCXMp30O+sT0HTT896muXtyY+EnciCJGgbxO28dqHPYxuIxBDZVWCpmd2kCDMafnxqdsROYhZlQdySCRrPjodI2A9ct7kgAf6nc/xq9g8BiL0Jbtu8DNpGgEayenMPmKfFCI0uy5MAabba7SR36+ld7/ZhdYpfUtAzI0wIJIYH6KPn4VzXDvZXEFwrrkBCiRkbRsg05wCecdxuDsa7T2VTD4cMpW41xnyMeSJRyiRzdZDH97tU3jWI18aarWdiv74+QrkMRxjGDGe7AJsBwpb3ZiMozc+2811Lhjth7vo1r+L1hYCzbxhd7b3EVTlMhBJPNIg9IXXwrOZ/Ju6X0bpY/rL+fWp8IxzqxdVAIJ2GmxAnwmq/2NUUBnZiBvpLEeAHWs6z9vRvei3bEfCC75tZkklY7CPXwpKXoOk0dbxTHWxZfK4BykCSNzoPxqrwHAtbWXdSSB8LAg+eorn+I3uJX7T2ntZASCGV0DEKysMszBOuhA28a3eC3LqWwjmcuxOYmPHmA+Q61tpzOTaEfk//ALpjfGD+y3XuV/a8KrDHn8q39dA4xs2bwjZu8/r09QYy2h3/AJ9ev36fP5kf11RTGP6nflePTnpxxr/kP/XRqDGXZ/Mj+uqqW4dzpzBOo2Ej9bfemfbX/If+uq1/FXszFCq8oAJDmYzHYOI1Pc0agxmojDf+I/rqdXH5I/qrBwGLxEMLuQEMcpQuQy9yCwynwk+dWLvEbwHIiuf23ZF+YLH6dKNQYy9duW9VefIrI/CuFTFXEvNYu3LbOSWXL0BJIVhAAMQQI29K6HH43GNzW0RTlEqWBBfrDEfDJiTG21clxbgeLxN5brhUbKocrc/V2KgqDMdfAVNY+jSNXZ0CZu4qj7RE/ZrpJHwHbpHWruGwS5QrMcwABnQn02+VTXeF23UowlWBBB6g9DWSl6aukeccF4o1ppD8pgMIG3ceIrubF8MAwuKQRIgDX61lt7G4NGClrstOUAqfT4fGtXAcKtWVyqt0jeGCtr4aaVVTvoU1nsyvaTA+8QOpUukmeuWNRA1byrh8diHuEktmdVClgygMVEeRX0mAK9BxvFcOCLaAlzmEZNoBJO3hHhM7CvN+I5c7s+YB8xMqAZOnTYnUQI1FKU0R5KT9D7l1WVSrbaaEQSYEqQfD4vA99KmLRiCZIY5l0DGTBywFEKNASI610OAwVlMPlvh7kiVVWdVJzMACYGum+x1GvXOucOupaS6gurdZoIVXUkOeXm0BB6RPxeFXKMsLfsv9qRz7l8hOxbLnfMqgwGJzgBVMNG4jetbF8DutbN4i4zO0AlTbZdZPKCAfhbQA/FOnSv7PYYzbfEB0W2xuZxYVUe5mZALlwalogDQSe+ldLxvFWLiqVuQ6MQrnOoUsOYSIOqjceXeivfZWdHj1s3GJNu1M6TExGUiCRuDBqZeCXiSIQaT8Q7EgR3O0V0XD+MYdLfu/dLAbRl0gADUhyd4JPer/ANpt3irrC8oBzHciNSSN/HYR0oqmvRPH/py1jgygN7zNmOi5TAB0I6GTAPlPWIrU4LZw2Y3WRdAVVIzhhrOcE6k7Tqdanx1+3lMbgmNidOgAHrNYHD7q5srE5Sd+mvQjtP8AChNtNsXo63EcSF209hbCBHzSVAEuTOYrIHxAHfeO1YWDxd22AiKZgh9Who5ebWBqCYFNtcYysUCeETuPlqfGi+MZ2DjDE76kMfChJj3Te4ZxK4jC4v8AeOJHMYVTCAAS2uzCf9KamMvgm57ols5eM6ZVJcOZ5gT118ayrGEu39EwZbuSCqj1BH410nC/ZkCDdwasR0Dqq+u7GjC02SWvanGOYFhFJ0lriBR4k5um9XfZTAvh0Zff2nLkMQuZoMQdQwB84FbWFtBBHuUtgbBIMfJRU5c0OilLY/3h6xPcCP4ml7xu9MpA1GmmEpc96Sue9RzSFAYS5z3+tIM3c/Oo6QNAsJgj9/rRRGBmog570ffNTE0yQo3T8aBV/H50UclZG4qL3rd/wpiWjiWFFbh7mo85/MUqRRIbh71Gbh7mkabSGPNw9dfOnre6RHlpUNKnomkNxNpmKsjiVJMMd9uo8qqYnHX7erLp3Gdh6kCroNOD/nX+dAmmcDiOLhb630GYZWU6EDm10JHXXvvWCmKyM1wKhlnMGSASc0b9SB16RXp2M4Thrpl7ctvK8jepU6+tYeN9kDOe1d01i24AEyDGZRoP8PrSa0zpUc9c4ijsrNJz5jDZGEtMaNIkErruco1gVoYDjRdBpK2FVUhgJCHMkyJkZIMbz0qrxHgNxBz2WheqmV85WYO+p1rJQBVdVQqTEcwYEekjrrTF3p2F7jjXEyOoykh9ydUcONOuoA9RWDdxjNnRXHNDFSNDDCDuNu/jWVfLFMgc9CIE82u5JiN6js24JJKztOoIEbDSNxQ032Jtmdg1YMQyPlYhTAOkxv2q3auspDNacqNQhnXWQGywSJA+utWcOx116n8Fq1c+7/j/ABq6fYYZOJx7XCc2S0G1ypsNQfPedPSsx0dGjQgwQRBBG4On4UzFfE/71bPsrreRDqufY7delX9E/wBn2RcJ4dibxD27btl+8sgA/vEQfKu04XwTFIQz2gx/buHLPkHEn09K7SyoAAAgDYdqmt1HI0UmfhjiNAzWEHZFc/LUAVcL+R9P506/0qGobNJQadTaVIsfNEUxd6dQAYpUqQoEE04WzTKcgoBjxabtRFg9xUqDSn1WGfJkSW8us0HtSd6moGmLWQe5Peh7lqsCiKWD5MqG23amEVaZR2qs+9JlJ6ClSpUihUqVA0AAigNOg9ae1R0ASLc8h86pYvg2FuyXRAx3ZOVvUjf1mrNIUyXKObxfsgp1tOp30cf/ACUfwrEu8ExNsnNaMbZlUONJjaY3r0aKfTIP/9k="),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //2nd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "data:image/jpeg;base64,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"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //3rd Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.cnn.com/cnnnext/dam/assets/160929101749-essential-spanish-dish-paella-phaidon-full-169.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //4th Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://loveincorporated.blob.core.windows.net/contentimages/gallery/d9e900e4-212e-4c3d-96d5-cb14a023c659-worlds-most-delicious-dishes.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //5th Image of Slider
                      Container(
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://www.eatthis.com/wp-content/uploads/sites/4/2020/01/chicken-tikka-masala.jpg?quality=82&strip=1"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.height / 4.8,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(233, 74, 148, 139),
                            blurRadius: 5.0,
                          ),
                        ],
                        color: Color.fromARGB(162, 249, 250, 249),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/history .png',
                            height: MediaQuery.of(context).size.height / 5,
                          ),
                          Text(
                            "History",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.brown),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.height / 4.8,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 110, 174, 226),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Example",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.height / 4.8,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 110, 174, 226),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Example",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.height / 4.8,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 110, 174, 226),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Example",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.height / 4.8,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 110, 174, 226),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Example",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 4.1,
                    width: MediaQuery.of(context).size.height / 4.8,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 110, 174, 226),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Example",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
