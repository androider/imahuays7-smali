.class public Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment_ViewBinding;
.super Ljava/lang/Object;
.source "BankBindFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    .line 25
    sget v0, Lcom/mh/movie/core/R$id;->iv_image_logo:I

    const-string v1, "field \'ivLogo\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->ivLogo:Landroid/widget/ImageView;

    .line 26
    sget v0, Lcom/mh/movie/core/R$id;->tv_get_money_name:I

    const-string v1, "field \'tvGetMoneyName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneyName:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/mh/movie/core/R$id;->tv_get_money_code:I

    const-string v1, "field \'tvGetMoneyCode\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneyCode:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/mh/movie/core/R$id;->et_get_money_num:I

    const-string v1, "field \'etGetMoneyNum\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->iv_get_money_close:I

    const-string v1, "field \'ivGetMoneyClose\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->ivGetMoneyClose:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->tv_get_money_submit:I

    const-string v1, "field \'tvGetMoneySubmit\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneySubmit:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->tv_un_bind_title:I

    const-string v1, "field \'tvBindTitle\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTitle:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->ll_bind_info:I

    const-string v1, "field \'llBindInfo\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->llBindInfo:Landroid/widget/LinearLayout;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->tv_band_bank_tips:I

    const-string v1, "field \'tvBindTips\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->mmll_layout:I

    const-string v1, "field \'myMeasureLinearLayout\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->myMeasureLinearLayout:Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;

    .line 44
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->ivLogo:Landroid/widget/ImageView;

    .line 45
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneyName:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneyCode:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->etGetMoneyNum:Landroid/widget/EditText;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->ivGetMoneyClose:Landroid/widget/ImageView;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvGetMoneySubmit:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTitle:Landroid/widget/TextView;

    .line 51
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->llBindInfo:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->tvBindTips:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/fragment/BankBindFragment;->myMeasureLinearLayout:Lcom/mh/movie/core/mvp/ui/widget/MyMeasureLinearLayout;

    return-void
.end method
