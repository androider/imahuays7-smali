.class public Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder_ViewBinding;
.super Ljava/lang/Object;
.source "PlayerCommendItemHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;

    .line 23
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_avatar:I

    const-string v1, "field \'ivPlayerCommendItemAvatar\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemAvatar:Landroid/widget/ImageView;

    .line 24
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_name:I

    const-string v1, "field \'ivPlayerCommendItemName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemName:Landroid/widget/TextView;

    .line 25
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_time:I

    const-string v1, "field \'ivPlayerCommendItemTime\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemTime:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_detail_comment_icon:I

    const-string v1, "field \'ivPlayerDetailCommentIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerDetailCommentIcon:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_detail_comment_info:I

    const-string v1, "field \'tvPlayerDetailCommentInfo\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->tvPlayerDetailCommentInfo:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_commend_item_commend:I

    const-string v1, "field \'llPlayerCommendItemCommend\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->llPlayerCommendItemCommend:Landroid/widget/LinearLayout;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_up_icon:I

    const-string v1, "field \'ivPlayerCommendItemUpIcon\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemUpIcon:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->iv_player_commend_item_up_info:I

    const-string v1, "field \'ivPlayerCommendItemUpInfo\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemUpInfo:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->ll_player_commend_item_up:I

    const-string v1, "field \'llPlayerCommendItemUp\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->llPlayerCommendItemUp:Landroid/widget/LinearLayout;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->tv_player_commend_item_info:I

    const-string v1, "field \'tvPlayerCommendItemInfo\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->tvPlayerCommendItemInfo:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;

    .line 42
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemAvatar:Landroid/widget/ImageView;

    .line 43
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemName:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemTime:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerDetailCommentIcon:Landroid/widget/ImageView;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->tvPlayerDetailCommentInfo:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->llPlayerCommendItemCommend:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemUpIcon:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->ivPlayerCommendItemUpInfo:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->llPlayerCommendItemUp:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/holder/player/PlayerCommendItemHolder;->tvPlayerCommendItemInfo:Landroid/widget/TextView;

    return-void
.end method
