.class Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity$1;
.super Lcom/mh/movie/core/mvp/ui/adapter/c;
.source "MyInviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/adapter/c<",
        "Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;",
        "Lcom/mh/movie/core/mvp/ui/holder/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity$1;->a:Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity;

    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/adapter/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/k;
    .locals 2

    .line 113
    new-instance v0, Lcom/mh/movie/core/mvp/ui/holder/k;

    sget v1, Lcom/mh/movie/core/R$layout;->item_my_invite:I

    invoke-direct {v0, p1, v1}, Lcom/mh/movie/core/mvp/ui/holder/k;-><init>(Landroid/view/ViewGroup;I)V

    return-object v0
.end method

.method protected bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Lcom/mh/movie/core/mvp/ui/holder/k;

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;

    invoke-virtual {p0, p1, p2}, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity$1;->a(Lcom/mh/movie/core/mvp/ui/holder/k;Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;)V

    return-void
.end method

.method protected a(Lcom/mh/movie/core/mvp/ui/holder/k;Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;)V
    .locals 3

    .line 118
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/k;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/k;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p1, Lcom/mh/movie/core/mvp/ui/holder/k;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/response/InviteRecordResponse;->getReward()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic b(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/MyInviteActivity$1;->a(Landroid/view/ViewGroup;)Lcom/mh/movie/core/mvp/ui/holder/k;

    move-result-object p1

    return-object p1
.end method
