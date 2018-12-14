.class public Lcom/github/ybq/android/spinkit/a;
.super Ljava/lang/Object;
.source "SpriteFactory.java"


# direct methods
.method public static a(Lcom/github/ybq/android/spinkit/Style;)Lcom/github/ybq/android/spinkit/b/f;
    .locals 1

    .line 27
    sget-object v0, Lcom/github/ybq/android/spinkit/a$1;->a:[I

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 71
    :pswitch_0
    new-instance p0, Lcom/github/ybq/android/spinkit/c/h;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/h;-><init>()V

    goto :goto_0

    .line 68
    :pswitch_1
    new-instance p0, Lcom/github/ybq/android/spinkit/c/j;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/j;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_2
    new-instance p0, Lcom/github/ybq/android/spinkit/c/g;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/g;-><init>()V

    goto :goto_0

    .line 62
    :pswitch_3
    new-instance p0, Lcom/github/ybq/android/spinkit/c/k;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/k;-><init>()V

    goto :goto_0

    .line 59
    :pswitch_4
    new-instance p0, Lcom/github/ybq/android/spinkit/c/f;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/f;-><init>()V

    goto :goto_0

    .line 56
    :pswitch_5
    new-instance p0, Lcom/github/ybq/android/spinkit/c/e;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/e;-><init>()V

    goto :goto_0

    .line 53
    :pswitch_6
    new-instance p0, Lcom/github/ybq/android/spinkit/c/c;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/c;-><init>()V

    goto :goto_0

    .line 50
    :pswitch_7
    new-instance p0, Lcom/github/ybq/android/spinkit/c/b;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/b;-><init>()V

    goto :goto_0

    .line 47
    :pswitch_8
    new-instance p0, Lcom/github/ybq/android/spinkit/c/m;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/m;-><init>()V

    goto :goto_0

    .line 44
    :pswitch_9
    new-instance p0, Lcom/github/ybq/android/spinkit/c/a;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/a;-><init>()V

    goto :goto_0

    .line 41
    :pswitch_a
    new-instance p0, Lcom/github/ybq/android/spinkit/c/i;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/i;-><init>()V

    goto :goto_0

    .line 38
    :pswitch_b
    new-instance p0, Lcom/github/ybq/android/spinkit/c/n;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/n;-><init>()V

    goto :goto_0

    .line 35
    :pswitch_c
    new-instance p0, Lcom/github/ybq/android/spinkit/c/o;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/o;-><init>()V

    goto :goto_0

    .line 32
    :pswitch_d
    new-instance p0, Lcom/github/ybq/android/spinkit/c/d;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/d;-><init>()V

    goto :goto_0

    .line 29
    :pswitch_e
    new-instance p0, Lcom/github/ybq/android/spinkit/c/l;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/c/l;-><init>()V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
