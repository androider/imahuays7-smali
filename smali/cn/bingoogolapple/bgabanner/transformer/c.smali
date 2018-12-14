.class public abstract Lcn/bingoogolapple/bgabanner/transformer/c;
.super Ljava/lang/Object;
.source "BGAPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;)Lcn/bingoogolapple/bgabanner/transformer/c;
    .locals 1

    .line 39
    sget-object v0, Lcn/bingoogolapple/bgabanner/transformer/c$1;->a:[I

    invoke-virtual {p0}, Lcn/bingoogolapple/bgabanner/transformer/TransitionEffect;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 67
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/e;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/e;-><init>()V

    return-object p0

    .line 65
    :pswitch_0
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/m;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/m;-><init>()V

    return-object p0

    .line 63
    :pswitch_1
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/f;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/f;-><init>()V

    return-object p0

    .line 61
    :pswitch_2
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/j;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/j;-><init>()V

    return-object p0

    .line 59
    :pswitch_3
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/n;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/n;-><init>()V

    return-object p0

    .line 57
    :pswitch_4
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/k;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/k;-><init>()V

    return-object p0

    .line 55
    :pswitch_5
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/g;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/g;-><init>()V

    return-object p0

    .line 53
    :pswitch_6
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/l;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/l;-><init>()V

    return-object p0

    .line 51
    :pswitch_7
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/a;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/a;-><init>()V

    return-object p0

    .line 49
    :pswitch_8
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/h;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/h;-><init>()V

    return-object p0

    .line 47
    :pswitch_9
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/d;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/d;-><init>()V

    return-object p0

    .line 45
    :pswitch_a
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/i;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/i;-><init>()V

    return-object p0

    .line 43
    :pswitch_b
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/b;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/b;-><init>()V

    return-object p0

    .line 41
    :pswitch_c
    new-instance p0, Lcn/bingoogolapple/bgabanner/transformer/e;

    invoke-direct {p0}, Lcn/bingoogolapple/bgabanner/transformer/e;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public abstract a(Landroid/view/View;F)V
.end method

.method public abstract b(Landroid/view/View;F)V
.end method

.method public abstract c(Landroid/view/View;F)V
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/bgabanner/transformer/c;->a(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 21
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/bgabanner/transformer/c;->b(Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    .line 24
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/bgabanner/transformer/c;->c(Landroid/view/View;F)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcn/bingoogolapple/bgabanner/transformer/c;->a(Landroid/view/View;F)V

    :goto_0
    return-void
.end method
