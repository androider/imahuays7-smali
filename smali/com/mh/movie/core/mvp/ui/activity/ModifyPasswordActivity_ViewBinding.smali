.class public Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ModifyPasswordActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->tv_phone_num:I

    const-string v1, "field \'tvPhoneNum\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->tvPhoneNum:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->et_verify_code:I

    const-string v1, "field \'etVerifyCode\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etVerifyCode:Landroid/widget/EditText;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->tv_countdown:I

    const-string v1, "field \'tvCountdown\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    sget v1, Lcom/mh/movie/core/R$id;->tv_countdown:I

    const-string v2, "field \'tvCountdown\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->tvCountdown:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;->b:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget v0, Lcom/mh/movie/core/R$id;->et_psw:I

    const-string v1, "field \'etPsw\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etPsw:Landroid/widget/EditText;

    .line 48
    sget v0, Lcom/mh/movie/core/R$id;->tv_modify_password:I

    const-string v1, "field \'tvModifyPassword\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 49
    sget v1, Lcom/mh/movie/core/R$id;->tv_modify_password:I

    const-string v2, "field \'tvModifyPassword\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->tvModifyPassword:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;->c:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcom/mh/movie/core/R$id;->ib_eye:I

    const-string v1, "field \'mIbEye\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->mIbEye:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;

    .line 67
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 68
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->tvPhoneNum:Landroid/widget/TextView;

    .line 69
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etVerifyCode:Landroid/widget/EditText;

    .line 70
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->tvCountdown:Landroid/widget/TextView;

    .line 71
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->etPsw:Landroid/widget/EditText;

    .line 72
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->tvModifyPassword:Landroid/widget/TextView;

    .line 73
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity;->mIbEye:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;->b:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ModifyPasswordActivity_ViewBinding;->c:Landroid/view/View;

    return-void
.end method
