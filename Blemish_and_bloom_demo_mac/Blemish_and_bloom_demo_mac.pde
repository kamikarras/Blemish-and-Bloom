/**
 * Blemish and Bloom 
 * A game concept written by Kami Karras for her design thesis
 *
 * I am aware most variables are confusing and need renaming. 
 * This game was being written as I was learning how to use processing
 * and often was written in a hurry to meet thesis deadlines.
 * Updates will include a full cleanup and the addition of comments 
 * to label the code.
 */

float zipperx = 0;
float x3 = 420;
float x4 = 420;
float space = 60;
int count2;
int end;
int tap;
int x;
float n2;
int n = 0;
String bt11 = "Time to try on that eyeshadow ";
String bt12 = "mom bought me";
boolean show = false;
int count = 0;
PGraphics pg;
PImage wand;
PImage mirror;
PImage mirror2;
PImage purse;
PImage cool;
PImage gt;
PImage w;
PImage e;
PImage r;
PImage a;
PImage s;
PImage v;
PImage f;
PImage g;
int moo;
PImage ib;
PImage shadow;
PImage eyes;
int time3;
int i;
int bi1 = 0;
int bi2 = 0;
String b1 = "\"the merest blemish on a Rolls Royce";
String b2 = " might render it unsalable\"";
int time;
int moo2;
int time2;
int lb = 0xff76CEDE;
int db = color(28, 54, 100);
int play = db;
PFont font;
PImage title;
PImage bdoor;
PImage hway;
PImage flower;
PImage yb1;
PImage school;
int fade=1;
int alpha = 0;
int alpha2;
int alpha3;
int alpha4;
String pt = "Tap your purse!";
String blemish = "A small mark or flaw that spoils the appearence of something";
String c1 = "\"didn't you wear that a week ago?\"";
String c2 = "\"you're such a boy.\"";
String c3 = "\"I wish I could just put make-up on you.\"";
void settings() {
        size(1280, 800, P2D);
        fullScreen(P2D);
    }
void setup() {
        orientation(LANDSCAPE);
        pg = createGraphics(1280, 800, P2D);
        font = createFont("Quicksand-Bold.ttf", 102);
        title = loadImage("title.png");
        gt = loadImage("j0.png");
        w = loadImage("j1.png");
        e = loadImage("j2.png");
        r = loadImage("j3.png");
        a = loadImage("j4.png");
        s = loadImage("j5.png");
        v = loadImage("j6.png");
        f = loadImage("j7.png");
        g = loadImage("j8.png");
        hway = loadImage("hway.png");
        purse = loadImage("purse.png");
        cool = loadImage("cool.png");
        bdoor = loadImage("bdoor.png");
        yb1 = loadImage("yb1.png");
        ib = loadImage("ib.png");
        eyes = loadImage("eyes2.png");
        wand = loadImage("wand.png");
        mirror = loadImage("mirror.png");
        mirror2 = loadImage("mirror2.png");
        shadow = loadImage("eyeshadow.png");
        school = loadImage("schooltab1.png");
        flower = loadImage("flower2.png");

        textFont(font);
        textAlign(CENTER);
        rectMode(CENTER);
        imageMode(CENTER);

    }
void draw() {
        if (x <3) {
            tint(255, 255);
            background(0xffffcd05);

            noStroke();
            fill(0xffFEE74C);
            rect(width / 2, 650, width, 300);
            fill(play);
            rect(width / 2, 600, 120, 60, 50);


            noStroke();
            image(flower, 150, 460);
            image(flower, width - 200, 460);
            fill(255);
            textSize(32);
            text("PLAY", width / 2, 610);
            image(title, width / 2, 250);
        }

        if (mousePressed == true && mouseX >= width / 2 - 60 && mouseX <= width / 2 + 60 && mouseY >= 570 && mouseY <= 630 && x == 0) {
            x = 1;
            play = lb;
        }
        if (mousePressed != true && x == 1) {
            x = 2;
        } else if (x == 2) {
            fill(lb, alpha);
            if (alpha < 255) {
                alpha = alpha + 5;
                if (time < 3) {
                    time++;
                } else {
                    time = 3;
                    play = db;
                }
            }
            rect(width / 2, height / 2, width, height);
            if (time < 100 && play == db) {
                time++;
            } else if (time >= 100 && time < 180) {
                time++;
                imageMode(CORNER);
                image(yb1, -5, 0);
                textSize(72);
                fill(255);
                textAlign(LEFT);
                text("Blem\u2022ish", 90, 210);
            } else if (time >= 180) {
                time += 0;
                int sx = 100;
                image(yb1, -5, 0);
                textSize(72);
                fill(255);
                textAlign(LEFT);
                text("Blem\u2022ish", 90, 210);
                textSize(32);
                text("noun", 500, 220);
                textSize(32);
                text(blemish.substring(0, i), sx, height / 2);
                if (i < blemish.length()) {
                    i++;
                }
                if (i == blemish.length()) {
                    i += 0;
                    time++;
                }
            }
            if (time >= 260) {
                time += 0;
                textSize(38);
                fill(db);
                text(b1.substring(0, bi1), 200, 500);
                text(b2.substring(0, bi2), 460, 575);
                if (bi1 < b1.length()) {
                    bi1++;
                }
                if (bi1 == b1.length() && bi2 < b2.length()) {
                    bi2++;
                }
            }
            if (bi2 == b2.length()) {
                bi2 += 0;
                time++;

                if (time >= 600 && time < 800) {
                    time = time + 0;
                    fill(db, alpha2);
                    rect(width / 2, height / 2, width, height);
                    if (alpha2 < 255) {
                        alpha2 += 5;
                    }
                }
            }
            if (alpha2 >= 255) {
                alpha2 += 0;
                time = 801;
                x = 3;
            }
        } else if (x == 3) {


            if(time<1000){time++;}
            if (time >= 1000 && time < 1500) {
                fill(db);
                rect(width / 2, height / 2, width, height);
                textSize(32);
                fill(0xffF69799);
                text(c1, 200, 200);
                time++;

                if (time >= 1100) {
                    text(c2, 700, 400);
                }
                if (time >= 1200) {
                    text(c3, 200, 600);
                }
            }
            if (time >= 1500 && time2 < 350) {
                fill(db);
                rect(width / 2, height / 2, width, height);
                textSize(28);
                fill(255);
                text("It's weird how these comments stayed in your memory", 300, 400);
                time = 1500;
                time += 0;
            }
            if (time >= 1500) {
                time = 1500;
                time2+=fade;

            }
            if (time2 > 200 && time2 <= 560) {
                background(db);
                imageMode(CORNER);
                tint(255, alpha3);

                if (time2 > 200 && time2 <= 370) {
                    image(school, 0, 0);

                    if (time2 <= 350 && alpha3 < 255) {

                        alpha3 += 3;
                    } else if (time2 > 350 && alpha3 > 0) {
                        alpha3 -= 2;
                        fade=0;

                    } else {
                        fade=1;
                    }
                }
                if (time2 > 370 && time2 <= 510) {
                    image(hway, 0, 0);
                    if (time2 <= 430 && alpha3 < 255) {
                        alpha3 += 3;
                        fade=0;
                    } else if (time2 >= 508 && alpha3 > 0) {
                        alpha3 -= 2;
                        fade=0;
                    } else {
                        fade=1;
                    }
                }

                if (time2 > 510 && time2 <= 560) {
                    fill(255, alpha3);
                    rect(width / 2, height / 2, width, height);
                    image(bdoor, 0, 0);
                    if (time2 <= 550 && alpha3 < 255) {
                        alpha3 += 3;
                        fade=0;
                    } else if (time2 > 550 && alpha3 > 0) {
                        alpha3 -= 2;
                        fade=0;
                    } else {
                        fade=1;

                    }
                }
            }

            if (time2 > 560 &&count2<3) {
                noTint();
                image(ib, 0, 0);


                if (time2 > 700) {

                    fill(db);
                    rect(width / 2, 500, 600, 300, 30);
                }
                if (time2 > 750) {
                    fill(lb);
                    textAlign(LEFT);
                    textSize(30);
                    text("Allo:", 400, 410);
                    fill(255);
                    text(bt11, 400, 480);
                    text(bt12, 400, 520);

                    if (time2 > 800) {
                        fill(0xffffcd05);
                        text("next", 800, 600);
                        time2 = 801;
                    }
                }

            if (mousePressed == true && count2 == 0 && time2 > 750) {
                count2 = 1;
            }
            if (count2 == 1) {
                bt11 = "I'm excited to try it out.";
                bt12 = "Especially at a new school.";
                tap++;
            }


            if (mousePressed == true && count2 == 1 && tap >= 50) {
                count2 = 2;
                time = 1500;
                tap = 51;
            }
            if (count2 == 2) {
                bt11 = "...Either it's in my purse,";
                bt12 = "or I'm carrying an empty bag.";
                tap++;
                if (mousePressed == true && count2 == 2 && tap >= 100) {
                    count2 = 3;
                    tap = 101;
                }}
            }
            if (count2 == 3) {
                tap++;
                image(purse, 0, 0);
                if (tap > 200 && count2 == 3) {
                    fill(db);
                    rectMode(CORNER);
                    rect(90, 65, 300, 100, 20);
                    rectMode(CENTER);
                    fill(255);
                    text(pt, 120, 120);
                }
                if (mousePressed == true && tap > 150 && count2 == 3) {
                    tap = 151;
                    count2 = 4;
                }
            }

            if (count2 == 4) {
                noTint();
                float g = mouseX;
                float yy = height / 2 + 40;
                float y3 = yy + space;
                background(db);
                image(cool, 0, 0);
                stroke(0xfff15b66);
                fill(0xfff15b66);
                strokeWeight(3);

                triangle(0, x3, 0, 0, zipperx + 20, yy);
                triangle(0, x4, 0, height, zipperx + 20, yy);
                triangle(width, 0, 0, 0, zipperx + 20, yy);
                triangle(0, height, width, height, zipperx + 20, yy);
                triangle(width, 0, width, yy, zipperx + 20, yy);
                triangle(width, height, width, yy, zipperx + 20, yy);
                strokeWeight(30);
                stroke(db);
                line(0, x3, zipperx, yy);
                line(0, x4, zipperx, yy);
                line(zipperx, yy, width, yy);
                stroke(db);
                strokeWeight(100);
                line(zipperx + 70, yy, zipperx + 370, y3);
                stroke(0xfff15b66);
                strokeWeight(80);
                line(zipperx + 70, yy, zipperx + 370, y3);
                strokeWeight(10);
                stroke(db);
                fill(0xfff15b66);
                ellipseMode(CORNER);
                ellipse(zipperx, yy - 50, 90, 90);
                fill(255);
                textSize(72);
                text("unzip!", width / 2, 200);

                if (mousePressed == true && mouseX >= zipperx && mouseX <= zipperx + 300 && mouseY >= yy && mouseY <= yy + 80) {
                    if (y3 > yy) {
                        space -= 15;
                    }

                    zipperx = g - 100;
                    if (x3 > 100 && x3 < 380) {
                        x3 -= mouseX / 400;
                    } else if (x3 >= 380) {
                        x3 -= mouseX / 100;
                    } else if (x3 > 60 && x3 <= 100) {
                        x3 -= mouseX / 900;
                    }
                    if (x4 < height - 60) {
                        x4 += mouseX / 100;
                    }
                } else {
                    space = 60;
                }
                if (zipperx >= width - 150) {
                    count2 = 5;
                }
            }
            if (count2 == 5) {
                tap++;
                image(cool, 0, 0);
                if (tap >= 300 && count2 == 5) {
                    count2 = 6;
                    tap = 301;
                }
            }
            if (count2 == 6) {

                fill(lb);
                rectMode(CORNER);
                rect(0, 0, width, height);
                rectMode(CENTER);
                String blue = "it's blue...";

                if (n < blue.length()) {
                    fill(db);

                    textAlign(CENTER);
                    text(blue.substring(0, n), width / 2, 400);
                    n2 += 0.1f;
                    n = round(n2);
                }
                if (n >= blue.length()) {
                    tap++;
                    fill(db);
                    textAlign(CENTER);
                    text(blue, width / 2, 400);
                }
                if (tap >= 480) {
                    count2 = 7;
                    tap = 481;
                }
            }
            if (count2 == 7) {
                tap++;
                image(mirror, 0, 0);
                if (tap >= 500) {
                    fill(db);
                    rect(width / 2, 600, 600, 200, 30);
                    fill(lb);
                    textAlign(LEFT);
                    textSize(30);
                    text("Allo:", 400, 550);
                    fill(255);
                    bt11 = "Blue is my favorite color,";
                    bt12 = "that was so nice of mom.";
                    text(bt11, 400, 600);
                    text(bt12, 400, 640);
                    if (tap >= 500) {
                        fill(0xffffcd05);
                        text("next", 800, 680);
                    }
                }
                if (mousePressed == true && tap >= 550) {
                    count2 = 8;
                    tap = 551;
                }
            }
            if (count2 == 8) {
                tap++;
                image(mirror, 0, 0);
                bt11 = "I wonder how it will look";
                bt12 = "";
                fill(db);
                rect(width / 2, 600, 600, 200, 30);
                fill(lb);
                textAlign(LEFT);
                textSize(30);
                text("Allo:", 400, 550);
                fill(255);
                text(bt11, 400, 600);
                text(bt12, 400, 640);
                fill(0xffffcd05);
                text("next", 800, 680);
                if (mousePressed == true && tap > 650) {
                    count2 = 9;
                    tap = 651;
                }
            }
            if (count2 == 9) {
                tap++;
                image(mirror2, 0, 0);
                if (tap >= 800) {
                    bt11 = "Probably something like that.";
                    bt12 = "";
                    fill(db);
                    rect(width / 2, 600, 600, 200, 30);
                    fill(lb);
                    textAlign(LEFT);
                    textSize(30);
                    text("Allo:", 400, 550);
                    fill(255);
                    text(bt11, 400, 600);
                    text(bt12, 400, 640);
                    fill(0xffffcd05);
                    text("next", 800, 680);
                }
                if (mousePressed == true && tap > 900) {
                    x = 5;
                    tap = 0;
                }
            }

        } else if (x == 5) {
            rectMode(CORNER);
            time = 1500;
            noTint();
            fill(0xffF15B66, 255);
            rect(0, 0, width, height);
            textSize(102);
            textAlign(CENTER);
            fill(255);
            text("challange!", width / 2, 200);
            textSize(32);
            text("apply eyeshadow", width / 2, 300);
            textSize(18);
            text("tap to start", width / 2, 400);
            time2 += 0;
            tap++;
        }
        if (mousePressed == true && x == 5 && tap > 100) {
            x += 1;
            time = 1500;
            x = 6;
        } else if (x == 6) {
            time = 1500;
            time2 = 851;
            time2 += 0;
            rectMode(CORNER);
            fill(0xffF69799);
            rect(0, 0, width, height);
            show = true;
            imageMode(CORNER);
            image(pg, 0, 0);
            imageMode(CENTER);
            image(eyes, width / 2, height / 2);
            if (count >= 2 && count <= 4) {
                fill(255);
                textSize(92);
                text("wow", 200, 200);
            }
            if (count >= 5 && count <= 7) {
                fill(255);
                textSize(62);
                text("looks so cool!", 600, 300);
            }
            if (count >= 8 && count <= 10) {
                fill(255);
                textSize(62);
                text("awesome", 1000, 700);
            }
            imageMode(CORNER);
            image(wand, mouseX, mouseY);
        }
        if (count == 11) {
            show = false;
            moo2++;
            fill(lb);
            rect(0, 0, width, height);
            fill(db);
            textSize(102);
            text("!", width / 2, 200);
            textSize(22);
            text("a beautiful voice from behind you:", width / 2, 350);
            textSize(48);
            text("\"looks like you need some help\"", width / 2, 400);
            if (mousePressed == true && moo2 > 10 && count == 11) {
                count = 12;
                x = 7;
            }
        } else if (x == 7) {

            image(gt, 0, 0);
            moo++;
            if (moo >= 15 && moo < 30) {
                image(w, 0, 0);
            } else if (moo >= 30 && moo < 45) {
                image(e, 0, 0);
            } else if (moo >= 45 && moo < 60) {
                image(r, 0, 0);
            } else if (moo >= 60 && moo < 75) {
                image(a, 0, 0);
            } else if (moo >= 75 && moo < 90) {
                image(s, 0, 0);
            } else if (moo >= 90 && moo < 105) {
                image(v, 0, 0);
            } else if (moo >= 105 && moo < 120) {
                image(f, 0, 0);
            } else if (moo >= 120 && moo < 135) {
                image(v, 0, 0);
            } else if (moo >= 135 && moo < 150) {
                image(g, 0, 0);
            } else if (moo >= 150) {
                image(v, 0, 0);
            }
            if (moo >= 200) {
                count = 13;
            }
        }

        if (count >= 13) {
            end++;
            fill(0xffFFCD05);
            rect(0, 0, width, height);

            fill(255);
            textSize(28);
            imageMode(CENTER);
            image(title, width / 2, 300);
            text("coming soon", width / 2, 600);
            fill(db);
            text("tap to reset", width / 2, 700);
            if (end > 12 && mousePressed == true) {
                zipperx = 0;
                x3 = 420;
                x4 = 420;
                space = 60;
                x = 0;
                time = 0;
                time2 = 0;
                tap = 0;
                count = 0;
                count2 = 0;
                bi1 = 0;
                bi2 = 0;
                alpha = 0;
                alpha2 = 0;
                alpha4 = 0;
                moo2 = 0;
                i = 0;
                end = 0;
                n2 = 0;
                n = 0;
                moo = 0;
                bt11 = "Time to try on that eyeshadow ";
                bt12 = "my mom bought me";
                pg = createGraphics(1280, 800, P2D);
                textAlign(CENTER);
                rectMode(CENTER);
                imageMode(CENTER);
            }


        }
    println(time2);
        println(alpha3);
    }
void mousePressed() {
        float t = random(30, 800);
        float y = random(30, 100);
        if (show == true && x == 6) {
            pg.beginDraw();
            pg.tint(255, random(100, 255));
            pg.imageMode(CENTER);
            pg.image(shadow, mouseX, mouseY, t, t);
            pg.image(shadow, mouseX + random(-20, 20), mouseY + 20, y, y);
            pg.image(shadow, mouseX + random(-20, 20), mouseY + 20, y, y);
            pg.image(shadow, mouseX + random(-70, 70), random(500, 600), 50, 50);
            pg.image(shadow, mouseX + random(-70, 70), random(500, 600), 50, 50);
            pg.image(shadow, mouseX + random(-70, 70), random(400, 600), 100, 100);
            pg.endDraw();
            count++;
        }


    }