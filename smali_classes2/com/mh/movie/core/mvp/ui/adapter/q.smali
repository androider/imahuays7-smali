.class public Lcom/mh/movie/core/mvp/ui/adapter/q;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MyCachePagerAdapter.java"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 p1, 0x2

    .line 12
    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "\u6b63\u5728\u7f13\u5b58"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "\u5df2\u7f13\u5b58"

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/q;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->c()Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->d()V

    .line 43
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->c()Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->d()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/q;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :pswitch_0
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;->c()Lcom/mh/movie/core/mvp/ui/fragment/CompletedFragment;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_1
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;->c()Lcom/mh/movie/core/mvp/ui/fragment/DowndingFragment;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/q;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
