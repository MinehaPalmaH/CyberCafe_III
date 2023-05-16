import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:palma/cliente.dart';
import 'package:palma/empleado.dart';
import 'package:palma/perfil.dart';
import 'package:palma/producto.dart';
import 'package:palma/venta.dart';
import 'package:palma/inicio.dart';

class Galeria extends StatelessWidget {
  const Galeria({super.key});
  static const header = 'Galeria';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: header,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: header),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          children: [
            GridView(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Image.network(
                  "https://fastly.picsum.photos/id/429/367/267.jpg?hmac=oiDJ7_Xr_iM_ejtefq_YgeK86UYHsyN-EaIqope7Lg8",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://fastly.picsum.photos/id/431/367/267.jpg?hmac=hGBVN8GOXUKUoIfvGTO0nZQrLP4yEvx1xIMX8NMcpRc",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://fastly.picsum.photos/id/326/367/267.jpg?hmac=BknFIkNnfc1RZTnFd4L27gAIdW0ffHehRjJy90sQfvU",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://fastly.picsum.photos/id/370/367/267.jpg?hmac=DLjeTPvXGfDBDVr0tcAYElwLipzXmXN1riFbKkhFF-A",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://fastly.picsum.photos/id/367/367/267.jpg?hmac=UNgS64JazQQCjjsWPS8Mr8HPzpQ5V5XhD7UPT4_O8rU",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://fastly.picsum.photos/id/365/367/267.jpg?hmac=2adxF13ExY70B3YBzKj0AFV2-Ds6dtSVSjqCIDkuJ1s",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://fastly.picsum.photos/id/495/367/267.jpg?hmac=25PwRQm8A80S5sopywXHe1mE5SdVPaFto37ohOgT46g",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://fastly.picsum.photos/id/518/367/267.jpg?hmac=c54zDY2slZ37ME7UCl8jo0fq2ZgOL0cBhnfwYtzCUCY",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFhUXFxUVFRYXFRIVFRUVFRUWFxUVFRgYHSggGB0lGxYVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0lHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xABFEAABAwIDBAcEBggFBAMAAAABAAIRAwQSITEFQVFxBhMiYYGRsQcjMqEUQnKCssEkM1Jis8LR8CVzg5LhY2Ti8RWEov/EABkBAAMBAQEAAAAAAAAAAAAAAAACAwEEBf/EAC8RAAICAQMBBgYCAgMAAAAAAAABAhEDEiExQQQTIjJRcWGBkaHB8LHR4fEUI0L/2gAMAwEAAhEDEQA/AOLEowURRgJiQCUklKISSgAgc1Kb8B+0PQqMNVKaPdn7f8qxmjAWhr6KgYMwtDeZNKjl5RbD5WRWKYBkodMrR7SubJ1Gk23oVGVgB1z3vlrzhzwtxEfFnMN004YaUeFOUnwZgHLeiwoms7ylGlG1TDDUBTKnbPsn1ntp02lz3GGtGpK6Vsj2S1CAbiu1nFlNuM+LjAB8DzS7vgfZcnJ3sIBKDaJiTMk6Zrvtl7MdnsEPFSqZmXPw7ogdWG5KTU9nWziCBSc2d4q1f5nEfJbon6fczVGzzwWFNPBXa9o+yKkRNG5e08KjWvHKW4Y8isB0l6E3VnnUYHN3PYcTT8gRyKHa5QUpcGNdTTfV+PNTHsSWjRNYjiiKQ7/0mwDnqrBzUwAtsVw+IwGnelhgCdckvC0EqNx7MOllPZ9ap1wd1VVrWuc0YiwsJLXFozI7TgYz0XcNm9IbS4/U3NJ/cHtxDm05jxC8sEwkl07pSoa0d69uzP8ACyeFal6kfmuAbMdk/nSPlVar3avSy8rWRtKtXrKQdTcMYxVG4TkA/Uj7U+CztjUgP5M+T2lUXD9/6JSatez/ACP0z2R4+q7Z7K+kFtb7N99Xpsw1amRcMWcEQ3U68FxGm7sjx9UbN6WUbGhKi86b7YF1dVqzZh7yW8cIAa2fABNdD6DXVHhzQ6GSJE5yM1TvarnogYqu+wfUJJ7Y3Q8HeVNj+1NsMYXMazNsjgMuCyD3SSeJJ81ptrbKeXVHyIJc4LLp8CjWwmdyb8QaCAQVyIgowgdUQQA7iTbkpE5ACG6qxpM9z/qH8IVazVX9vQ/Rgf8ArOHlSYfzU8jqvcpBXa+BXU6eY5q6vx2T4eqi21qXabhPopd+OyfD1UJyTki2OOmDIbWqTTKj03tUhkcVrbRsUmOYUbWJ6k0Rqrv/AOLthaCt9JBrk/qABIGKM94y7U6blNzoroFdB9pi1vKNZw7IcWu7mvBaXDlM+C9FrzExi7V0c6eWtWmxtZ/VVA0B2OQwkCC5r9IPAwU2LIk2mLlxt00bSEaYtLqnUbipva9vFrg4eYT66lvwcwIWL9pu0m07cU4kuOLkG5DxJMea1NS+YNDO6QQRPBcv6RbVp318yi5jgzH1TgTBIZinQ5dqVy9oyx0uKf8Ao6MGN6k2cursmU22gcjBjjBiea2nSx9kGGjb0S17KhD3xrhxNLcRJJzjyUemP8MA/wC4/lUO9dLbqX7rcyrqWSsK3Rwstm3BeMww4QDkH6SZ7xuTVZmR5FbO7eG29SnhDsFBgg7pa4A8xEjvARPI1VAsad2YPZtBnXU+saHML2hwOkOy+Ug+C1ljYNt7yvVDQGMpY2iMhiG7/Y9ZOuMvELa7brF1m94HafTYDyJ/8j5oyNuvjsZCKV/Df7HObh5MuOpknmcyobyrS5tyGZjNVrmrri7OOcXe4b/1VT7n4lCpHI+HqptXKm/7v4goNLTxb6qseCUuhJpHLxPqnrbOUxOvN3qnrLR3MLJcBDzIW9is+jLoqn7J9Qq9zPFTthGKv3Soz3iy0POmO7Quajqj24wAJgEZaaLKraV7dkuJM4tQYhY6u0BzgNJMcpyT4mZnT2b+ITQgja4IK5AbKUAhGan7OtA/U6bljdGpW6RChE8LTUbBg3JnaGz2YHEDMNJ8gpd6rop/x5JWZykO0OYWrt2/of8A9ip/ApLK0viHMLV0T+iAf9xU/gUUufmPv+B8PX2/KH9jM+L7P5hOUdnde7q8WGQTMA6DIRI7lDsK2E8xHorbZ9Usqhw3TPJc/Ezqe+KkVN3svqyRByCq6NVhG8LXbW2yHtf7s6H9k+hWGt6ZIkAx4p8NyjctiPaNMJLSW9JzYyJS+sAMYkrY9JhcA8wNSoW1sHXdgyE2m5UY5uMdRZNqEfWTzLtw3hZ01ijrOOGZPmt7kz/k+hsbHbFamcVN7mHixzmk+IKm1+lN08Q+vWI4Go+PKVnNnElgTpK55RS2OtStJnUOiV2421seqD5q1cTyR7oS/wB5JB4R4rM7Ku2v2iHg5Or1HN7wcZB8lN6ObQfTt7NrXQH16jXiAZbLzv0zg5Km2Y4DaAgZCvVA7hL4C50vN8ylkjpbYU6by5tUPc99VzwC3sSZAIBJ3nXgkMH+HAf9f+VVfSe3q0S+q+nDH1nhpxMJOIucDAMjIb1cbGthWssGPCOtLiYnRoy1707VRT+JidyaXNFEbPEQJ1IHmtZcWji+5J+GpSaxue9rXDT7xWVa9jboUg/EGVGyeIBE6KypbeivUe57jS7bQM4EERkeR14ommzE49DPG1xEMxZy0R9owFtqwDxVobhTa0c4P/isDaXop12uwkgRGcYsMxmr7YV+6rcVHNe0Yieye0B2ZAEEToBzVMsXz6bi4pJuuvBX7Ro+6y7lniZJHBbOts901iXNy1EGIw4vDI/IrLVmiciFTDJbks8XaZBvBDD4KCw5HwVptNgDNc5E8IVUNPJdcHcTiyKnQ+Xa8z6qXsv63h+agk68z6qbss5u8PzWzXhMxeYlk6ppro0mU9UOWqZondMKMWWnyWVBri3AS0ggkTOay8LV0gSMJwlucSfy3LKuEEjvTYeWZmVJBtQQQVyBLNu39oeYRWtx1bjGar3AoZpdPqNxujV2u0GHUwmNpXzcDmgySCPMLOYihjSLCrso80qoVS+IcwtNSf8Ao3+vU/g0VmKXxeIV/Sd+jD/OqfwqSXMrcff+wxOtXt+UFTfmFabWkMJac8o81R06mY5hXe3XRSdzHqoyXiidEJf9cv3oZ6pdVYMmfAf0Sba6c0QAE0+rIQpTGi6mlRxKTu02TPpzozCYdWl8kJUJlw7SxJIG5EvrGcExcOEQEZhNVCtS3MlI0+ym+7CJ+qLZjqgYAGqO+s6TLVxuL1M9FTioou7fbDmMosa0e6e6oCZMl05EcM1EqXrw91ZpwvxOeCACAXTMAzxKgtuO5G64kEQl7v4GvIn1K7aG2bivDa1VzwHSAYABzEgAAaEjxTd3RIYHYpndwRXNsWkSNShctJBAOS7GlGktkeerkne5a9Er/wCiVW3GAOLDMTEhzS0idxgnNabbHTejdMqUjblpd8PaaRu7ZMA4lg6DSBvKkOsqhdIb6KU1G3bLRi6VITtC4BgNnJG+o0Rh7JMcypQ2NVcIIaBrmU3U2VhIxVGZd8wk73Fxq/JV4c270/j/ACRTdPpl0ucZGcH14qPTJBa7jMypjrdgmag8BJRilR3veeTU+pej+hPQ/VfVEbaVUEZcBPMFV3/CtL9tLB2A+cs3aKsCrifhJZfNyvkLO/mVK2cM3Zxp+a2vQz2X19oW4uW1mMYXPaAQS44HFpOXeCs9tTYTrS6q29RwLmRmN4KJTTTQQhJOxnONUVIRmHCe/RG6iO/zQo2rN4B5qdladk1twIh4pkazIBWYd8R4SY5TktG2zGnVMdnlESs7VAxGOJy4ZrcVb0ZmulYMCCLJGrbnOIcjKDtUSYwIpMJaQUGiqequaTv0cf5z/wCHSVMzVWlM+4H+Y/8Ah01Oa49x4Pn2/KEUT2hzHqtDtwe6dzHqs3Qd2hzHqtqLJtY9W92FpOZ00zXNmdSTOnAnKEkjFRorShbuwY8Jw/tQY81s/ZXY2gvXNuGsdAPVF4aW4gdYOUkTmu8VKNLAcQbgjOYwx37oVXNvZV8yKx1uzyTW1TJErs20eglreXFWvTdhpl0NbTwhhgAOcI4kHRYnpl0O+hQ5r8TXGADqP6pIZ4N11Glgmk2ZLAE3WpRC6z7GNh2lfrjcUmVKjCzCHgOAYQc2g5TiBz5LqG1+i9jWpltW3pFoznCGlveHCCFTW92uF8RO7T2bOH7Lp+7HJUt0O27mtRSpsbiFMywOeGHeWhxwnyhZi8/WO5rmg7bOuaqKEBGUlpSg0kgDUmBzOioIVt3dYjBOhTQOIwFpb72fXYYa3ZjWM581fex/ohTu3Valcy2k4N6v9olsy7931IKp3kZK47sgoTjLxKkYMW7uJCXc2VRpALycgciV1vpR7Oq0vfbsoimO01gc4PgASAC2BvylZS26LXLm4xRIBzzLcUclzvI4+bY6lijLh/yY76ETvcfEojYHFhDc5/JXdS0zc1pzacLpyIO4enmnq+zKtMyYJOWRHJb3r4sxYE96M5RtSSP3pHknRZdmSR8URvGcStZX6L1qdNlWo3C12YkPhu8YzGRO7mFU9VSlkvaA7MuJ+EjKHIWSw7miiv7cCm4zmCPESqXitJtUs6p+GJy5ZO1Cza6sTuJyZklLY3XRj2lXVhb/AEai2mWhz3AumRiJJAjvKzr7x91WqVqpxPcQ4qoVhsUZv5D1RKCinJc/5CEnJqL4LAjuSmjfAS8G5E2jvIkcAVCzpoca0T8Oe4tWYqtIc6dZOuuu9aVpHwgEHdrPdmqavREnPOTOmRxb0+N0SzK0qIrWj9ofP+iJSW0Kf73yRK1kKIpQlEgnMAkuSklyADbqrCmfc/6jvwMVe3VTWn3P3z+BqSXQZdfYRRPaHMeq1m0Q4sIb8UiPNZGge0OY9Vs6xzb2sPaGfDNc2faSZ1dl3hJexDt9kVwThdmIVjWqXxHVvrOcwRDHPeWjh2dE1si/w3QY98sxgOPdw+cHxW09oHU0qLMGFtQuEYYBI+tPdouDN2yUO0QxON6uHXB1QwQeNzTaq+voZ3Yu2b2hLWubHAyR4ZqBti8uq7warpjQaAJqldPiZlRm7Qc52WfJdaj4tVIm3GkrYulcV6Dg+m4tcNHNJBHiFI2301v6zAyrXcW6ECGzzwgT4qFWuCTEqBtJ2Q5hWjFPlHPldXTNpsn9WOSzt6PeO5q82S/3Y5KivT23c1GHmZab8KGmpxroII1BkcwmQlzoqMmaK86fXLqXVBjQYjFn6cfFUPR/pJdbPqOrUHAF8B4c3E18EkYhIORLtCNSo+0zhIhU91dOIgrcMIteFC9ocovxPdHSNo+2G7rUywU6dPKCWyZ/3aD+5Vnsz2rU+owvouFQCIGEtPfM5Lj1LNS6AOswtyYYPdiYss+F+/EnbZ2hVq1n1s243YiASBlpprEKFZbXq034yXOAkQXHIneDnBy9UdzeHQJ2jtMi2fb4BDzJdnI03b9ByTuPhUVG+F8hFLxW5Vz9TQ33tGvLm3dbVOrIdhlwbBhpBjhnAlZkukrTdLNjtZ1NWnSbS62kDgbAgiCZEATD2id8ZrP9SeBUcGSE4aobftFckJqVSdkW6+B3h6hVqs709gj+9VWLqxvY55chKy2MTidHAeqrZVpsL4nfZHqjJ5WNi86LR3cOaQ1p1GKApdSIkFQsG8Fy5Uzrkhyd3aB3FVNazjE8v1Jy38yrQVBoSSd2vgqerVJyg96eF3sTnprfck2W0wxgaaYcROZnOSTx70FXYkFbRH0Ia5fqEJbWj+yEyUYVBB80+8eYTb2JIKJFGAGqlA+6++fwtUQaqUD7v75/CFj6Df0JofEOY9VqdsEdWZ0ls+aydM5jmPVarax92eY9VzZfNE6MHkkjf9AtmWXU07mu2mWYi6X4cLS1xaMROue7krTp3tSymjVYA8kOaSxuIBsAguA7xrvnuXHrO9c2GlxwTOGThnjHFWGz9qupvkw5mcAzLcsiOS89dkn41KVqTvqqXoehHtKjkhkX/lVt7V9/c1lnbMfbdY2i7tOPVe7PaBMNwnXw4JnYOxRVuXtqg0yAJaRhJnOf/Sdoe0ENAaaOQ4HPSBloFmNsdILi4r9bS7BzaA3Ps7pO896zE+0zytSgoxqtV3dPb69bGydoisVPm06SXP4NPd9GWMcZM9rXmVI6V7Ptm2LoAxASOMrHO6SXA7D8zv4qLf7Tq1BDsQHDcuxKe1nC4QbdP7F1s6sMAg7lT3L+0eah2F5gdnMI6taSSqKFNiPJcR4O4IOdGuSm7Ntppvq4hLd0epVPte9DmAfWOqxPVLSjZQ0w1N/IXtbaDTk3MqlL5OaSgumGNQVI58mR5JamX+yWsDKjjBgZDfoqYvOkplroUu2sqjgajWFzW/ERoOaIw0tvmzMmTVFKqov+g+wm3V5QoS0lxLntcYGBgLnDLOSBHiu8dHeg+zW4qzKFJ73EgkAFlMs7DhSb8LMwZjOZXH9hbRa+jDqIaAHdW8NzFQzBLpnfwGgzyS+iHTU2zX2dRzqYq1IdVDsIY10NJE/CQAYcDAy4SuJybm5aW62avo3bdbLbry64OpQjFLfne66r99udzWbV6IMuNr0qLHgUmg1HQc8DTLgO8kgTuxErU+0Xo/aNsnOFNtPAW4S0Ad0d65tW21bWm1OutG1H02jCAHlxEtDSQXEyMR0cYzkbkjpr02urqncUnlrWM6ssDQe1iPxEk55aRklTVaa9Kfpb+u1+g9u9V+6+T/mjF/T6fUVqeHtuiHdzXNIHyPmqNOg5HLxTS9CMUro4nJtK+gFbdHz23fZ/NVIUm0Ls8DoMeY4ImrjRsHUkzUPORzUMVf3j/fBN09n13U8ZqAZTEGVXtNRsYiYOkRquZRXqdEpS5plhVu2NzxmZygcFSVrgucXHepN9bPxAmO0OzGcxu5qE2m4kNAJccgACSTwAGqtjUatEcjlelhoJIRqtkxJRoigEGCkEElAAGqkD9X97+VRxqnx8H3v5Upo2DmtNtk+6Ph6hZgLS7VPuneHqFHL5olsXkl7f2UM80oPSGVSCO5PXt215BAiBmrN78HMo7Xe4sOBaTOYWi6OXTKdMvIBKoNj7T6iqyrgDsLg7CdDHpzWgG0fp1y806Qph8SJmCAASTAkmJXPm1Pw6fDzdr6V7b2dXZ6T1XvxW/wDPAVQMrv6xghw+aq9sX7w7BAEdyt9uUnWTey5pJWdtXNqOLqju27JsbiN/Dw5pYJVq6dB8rfl4fXoWOz7TrWwGOc/WAM1W3FWHQWkZwZBHNSaW2K1tUOFzZiDvBBg/0UK92i+qS50S4lxMRmTJVMcZqbbS09N3++xPI4OCVtSXO35NJZVmMpHSSs1tJ8vyTFGpmJOSF27tGE0cemVizyucUq4GiiQQViQFPsNqVKLXNa7su+Ju4qBKCHuHBoNlbWptye10EyIOTTxhSq15bENc9gqHEARJaS0ZkSNOeaodnWrqjjhjITn6Kxtq+KmXGmwkH4YAkAZrmnjSdq/qdMMsnHS6+GxZG+o1bkutqIp04bDHRh1Y0k4YG+Y7k9c7LrOp1qrmjCG0W67oDgBxjEk7PuGvDHMpNpjE0QGzOElz3E65BrcpjtKTV2lbUMVKq2tUmA/E8gsc0kFrIywbxzK5ZqSpRW6rbl7P1OiDjXiezv4Lj0+ZlsDRSqwD9Tfpm4T371VLU7bqWzqDn2tOoxpLWu6xwMuaQZbG6D81ll3YZalbTXvycWRVSDCdoak8BI8E0E7bkSZ4KjJlnW2nVeIxRloABIA0UIVXHUlE8ToR5pBae7zCRKI0pT9WS+tIAMuy5CNyjW9UNcXkE6wA4tcCfrAgbklxdEJvqzwWpJGOTe7EtQSWoJ6GDcgERQBQILdrloiKEhJlABjVPj4D9ofhUeU42rlHfPyhYzRK0N5dNwEDM5ZarPjmrClVEaH++SnON0xoSpNeoKD3OOVHF4OUursiu8SLIt7xI9SrfozUY+oGNMOOklv/AAt5cUnMZ22Vct4GIfJcfaO1d3NRrf3d/wAo7cHZVOF39KOWs2NDRJIdGYI0PBWWzr/qKbqeAE7nDIqRtKs3ESCT5hUlyd8qqk5qpEnBY3ceQ27Gu7l0gF/3h8pKXcdH6lHOpSqsjfGU8wr3oltqlRd2j5BzvRbvpDX6yi5rWyYyjiRko5e0zhNRrb6F8PZ8co2t39TlFRgdTLQILjL35Fzo0b3DRU13b4DEgzpC0VWrkRlkTGXEmVVV6YJzC6McmvY5sqVL1IlCyc4YpAHfqlu2c6YxD5qUwQIGibqEgyn1TbM0wS3RFNi/u80h9q8aj81IFYj80/UuWlpzzW6pmacbRUJ63pYjEgDMknQAb03CsKOzw5sgn4cW6BHxDzVJNIlFWafY9hb0wXUrhtQOAmey8Ea5fl6pi7rsYTTp/DvyGp79d6hu2O6g1jw6C9mPDJyAI+IFogkHLMqLUnEScuH9VxqFt+K/9nVLLpqlQR2oWA047ImIjUzn5OcPLgl3d8axc9rO0XknPLC8SGgdxBzk6pNGuxoOKm15nLEJw5zI8Ms+KiXFyXNLxDSXfVAaAIdAAGg0V9Kb2RFy25+Ra7WvKf0VtJgzaKeJwiC8y6p5OMeCzClPf2SIG4/8KKqY46U0JOep2GE7SbJTQT9rqeSaXAqCfTA4jwSri3LDB/NSmsDqjRUBw7+MTmRxy9E1djLTMkuPCNwHmfkkTYzikiJCEFEihMIAII2oJxxJCGFGQlNCwWxOFEQnsHGR4JpyAQcIFqW1GAtFsawo8wnMCItWG2Bly4b57iA4eRkK3s+lFxT+F7m5fVfUaP8AZJZ/+VTQgWhLLHGW0lfuNGbjw6LKvth9Rxc5xJOpIafwhqS28Pd/fNV2FFmju4rgHJvqbDYW2GNPb7H7wY8/Nkq6u9sBwllxTfoYDm4st+EwVzdtQhL+lE6meefqoS7NGTs6IdpnGNGps3UXP984spjc1pcSZO/OOeal17PZ0FzLtwIzwuABPcMTQsey4A7uRI9E625/ePjCHhd7Nid96o0LbS2OlwBzDHfhcls2PRfkLieTB+bgFQMrcj8k/wBb+78gVOeOfSVfJflFoZ8Nbwv5v8ItK3RxjWlxrQBxaM+4YXFUNS3AUg1m8APAAoY2neqx1rl39iEtEvKRWsHBX2yLWpVYWU8RdgrCASOz1bnw3cPrnxVUGjiFJtS5o7BzhwMDc4R6ErJsaCpllfVMJaXMaIZ8OZbIGZA3EmfGOC0/s76PW106tSuqGIspyO29rmva8tdmwidRrPwrF1KLsLS7eY5BbvoBtRlO7uqmNuF7CR2gMy+dDxE+S58knGNr0/f5OhR1Pdfv6jI7U2GxletSa7CA7sBwcYAO9wz0356iYzIoNqva0ikzRkgn9p2JxxDuh0LR9Mrlv0mq8AHE0EZA9rFM/ksa4zqujBckpM589RbigPdkm5QKJdJAMJ63rlhkAHmJTIQBQ1YLYsa93jh0YTp8/RMVqhLTJJMjyAM/ko5ehiy1SqKXBrk2IQTrWApJYmswJqJKaEEBYXWQckfXO4nzKbOqNBtALkJQRSgyh1gySgjZoEcLRGCUEeFEsAACOEUowgAurSCwpwFGgLGvBEWhPwk4UGjPV8CklhT2BDD3oNsaBKcZWI0KPySct8hBg+28dvg8x+eqdbdUz8TDza4D5OB9VE6kHQonUHJaQxZM6g6VS3uexwHmwu9E8LRx/VuY77NRhPkS13yVIQQkyscPiNa9P37l1XNVoAe1wA/aDh83D81YbF2yKbqhcQ3EAM2mNZ3ZBZujePZ8L3NHAOIHkE4b5x+LC7m1s+YEpHiTVMeOSUXabLPaVy2o+QRmImclW1julINVp+r5f8pOR3p4wpE5Sct2IeEhOuYmsKcVMMJTGykgJbDCGaG5iINSxURSl3MsViTZKNyQUJAKbogg0IJjRsgoQUEEGggoQUEEAPUxklhqCCCYCklqCC0AoKUAgggAQlZoILADARhqCCACLUWFBBABFqSWIIIAI00tpcMwSPH8kSCDU2OdeYlzQRx0Py/oiJYdxHkQggsoaxs0JzGY/vim3UygghGXTElhRYSggtGDzR4igggGhU9wR5cCPIoIIMBgHFDqyjQQKEaZSS0oIINFQgggg0//2Q==",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/flat-white-3402c4f.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "data:image/jpeg;base64,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",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: Image.network(
                "https://fastly.picsum.photos/id/1060/536/354.jpg?blur=2&hmac=0zJLs1ar00sBbW5Ahd_4zA6pgZqCVavwuHToO6VtcYY",
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(' Inicio '),
              subtitle: const Text("HomePage"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Inicio()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.tag_faces_rounded),
              title: const Text(' Cliente '),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Cliente()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text(' Empleado '),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Empleado()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.coffee_rounded),
              title: const Text(' Producto '),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Producto()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text(' Venta '),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Venta()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Perfil()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text(' Galeria '),
              subtitle: const Text("Usuario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Galeria()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
