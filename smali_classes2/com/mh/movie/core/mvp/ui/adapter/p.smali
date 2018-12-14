.class public Lcom/mh/movie/core/mvp/ui/adapter/p;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MyBankCardAdapter.java"


# instance fields
.field a:[Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    const/4 p1, 0x2

    .line 14
    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "\u5151\u6362\u5230\u94f6\u884c\u5361"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "\u5151\u6362\u5230\u652f\u4ed8\u5b9d"

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/adapter/p;->a:[Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/adapter/p;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/p;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/adapter/p;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method
