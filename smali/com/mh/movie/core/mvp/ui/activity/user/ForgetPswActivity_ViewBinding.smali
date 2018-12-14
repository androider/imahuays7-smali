.class public Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ForgetPswActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    .line 40
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->tv_phone_num:I

    const-string v1, "field \'tvPhoneNum\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvPhoneNum:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/mh/movie/core/R$id;->et_verify_code:I

    const-string v1, "field \'etVerifyCode\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etVerifyCode:Landroid/widget/EditText;

    .line 43
    sget v0, Lcom/mh/movie/core/R$id;->tv_countdown:I

    const-string v1, "field \'tvCountdown\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 44
    sget v1, Lcom/mh/movie/core/R$id;->tv_countdown:I

    const-string v2, "field \'tvCountdown\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvCountdown:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->b:Landroid/view/View;

    .line 46
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget v0, Lcom/mh/movie/core/R$id;->et_psw:I

    const-string v1, "field \'etPsw\'"

    const-class v2, Landroid/widget/EditText;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etPsw:Landroid/widget/EditText;

    .line 53
    sget v0, Lcom/mh/movie/core/R$id;->ib_eye:I

    const-string v1, "field \'ibEye\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibEye:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/mh/movie/core/R$id;->tv_commit:I

    const-string v1, "field \'tvCommit\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 55
    sget v1, Lcom/mh/movie/core/R$id;->tv_commit:I

    const-string v2, "field \'tvCommit\'"

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvCommit:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->c:Landroid/view/View;

    .line 57
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_all:I

    const-string v1, "field \'ibClearAll\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 64
    sget v1, Lcom/mh/movie/core/R$id;->ib_clear_all:I

    const-string v2, "field \'ibClearAll\'"

    const-class v3, Landroid/widget/ImageButton;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearAll:Landroid/widget/ImageButton;

    .line 65
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->d:Landroid/view/View;

    .line 66
    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding$3;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_psw:I

    const-string v1, "field \'ibClearPsw\' and method \'onClick\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 73
    sget v0, Lcom/mh/movie/core/R$id;->ib_clear_psw:I

    const-string v1, "field \'ibClearPsw\'"

    const-class v2, Landroid/widget/ImageButton;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearPsw:Landroid/widget/ImageButton;

    .line 74
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->e:Landroid/view/View;

    .line 75
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding$4;-><init>(Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;

    .line 90
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 91
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvPhoneNum:Landroid/widget/TextView;

    .line 92
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etVerifyCode:Landroid/widget/EditText;

    .line 93
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvCountdown:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->etPsw:Landroid/widget/EditText;

    .line 95
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibEye:Landroid/widget/ImageView;

    .line 96
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->tvCommit:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearAll:Landroid/widget/ImageButton;

    .line 98
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity;->ibClearPsw:Landroid/widget/ImageButton;

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->b:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->c:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->d:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/user/ForgetPswActivity_ViewBinding;->e:Landroid/view/View;

    return-void
.end method
