.class public Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity_ViewBinding;
.super Ljava/lang/Object;
.source "BindBankActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->et_bind_bank_account:I

    const-string v1, "field \'etBindBankAccount\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankAccount:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->tv_bind_bank_name:I

    const-string v1, "field \'tvBindBankName\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankName:Landroid/widget/TextView;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->et_bind_bank_owner:I

    const-string v1, "field \'etBindBankOwner\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankOwner:Landroid/widget/EditText;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->et_bind_bank_info:I

    const-string v1, "field \'etBindBankInfo\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankInfo:Landroid/widget/EditText;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->tv_get_money_submit:I

    const-string v1, "field \'tvGetMoneySubmit\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvGetMoneySubmit:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->iv_clear_input:I

    const-string v1, "field \'ivClearInput\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->ivClearInput:Landroid/widget/ImageView;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->tv_bind_bank_address:I

    const-string v1, "field \'tvBindBankAddress\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankAddress:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;

    .line 47
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 48
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankAccount:Lcom/mh/movie/core/mvp/ui/widget/BankCardInputView;

    .line 49
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankName:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankOwner:Landroid/widget/EditText;

    .line 51
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->etBindBankInfo:Landroid/widget/EditText;

    .line 52
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvGetMoneySubmit:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->ivClearInput:Landroid/widget/ImageView;

    .line 54
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/BindBankActivity;->tvBindBankAddress:Landroid/widget/TextView;

    return-void
.end method
