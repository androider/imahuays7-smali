.class public Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1_ViewBinding;
.super Ljava/lang/Object;
.source "QRCodeActivity1_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    .line 29
    sget v0, Lcom/mh/movie/core/R$id;->topbar:I

    const-string v1, "field \'topbar\'"

    const-class v2, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 30
    sget v0, Lcom/mh/movie/core/R$id;->tv_code:I

    const-string v1, "field \'tvCode\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvCode:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/mh/movie/core/R$id;->tv_copy:I

    const-string v1, "field \'tvCopy\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvCopy:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/mh/movie/core/R$id;->uv_qrcode:I

    const-string v1, "field \'ivQrcode\'"

    const-class v2, Landroid/widget/ImageView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->ivQrcode:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/mh/movie/core/R$id;->tv_save:I

    const-string v1, "field \'tvSave\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvSave:Landroid/widget/TextView;

    .line 34
    sget v0, Lcom/mh/movie/core/R$id;->tv_share:I

    const-string v1, "field \'tvShare\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvShare:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/mh/movie/core/R$id;->ll_bottom:I

    const-string v1, "field \'llBottom\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llBottom:Landroid/widget/LinearLayout;

    .line 36
    sget v0, Lcom/mh/movie/core/R$id;->ll_normal:I

    const-string v1, "field \'llNormal\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llNormal:Landroid/widget/LinearLayout;

    .line 37
    sget v0, Lcom/mh/movie/core/R$id;->tv_code_2:I

    const-string v1, "field \'tvCode2\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvCode2:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/mh/movie/core/R$id;->ll_jie_pin:I

    const-string v1, "field \'llJiePin\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llJiePin:Landroid/widget/LinearLayout;

    .line 39
    sget v0, Lcom/mh/movie/core/R$id;->tv_jie_pin:I

    const-string v1, "field \'tvJiePin\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvJiePin:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/mh/movie/core/R$id;->linear_main:I

    const-string v1, "field \'linearMain\'"

    const-class v2, Landroid/widget/LinearLayout;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->linearMain:Landroid/widget/LinearLayout;

    .line 41
    sget v0, Lcom/mh/movie/core/R$id;->tv_web_url:I

    const-string v1, "field \'tvWebUrl\'"

    const-class v2, Landroid/widget/TextView;

    invoke-static {p2, v0, v1, v2}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvWebUrl:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1_ViewBinding;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    .line 51
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    .line 52
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvCode:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvCopy:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->ivQrcode:Landroid/widget/ImageView;

    .line 55
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvSave:Landroid/widget/TextView;

    .line 56
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvShare:Landroid/widget/TextView;

    .line 57
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llBottom:Landroid/widget/LinearLayout;

    .line 58
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llNormal:Landroid/widget/LinearLayout;

    .line 59
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvCode2:Landroid/widget/TextView;

    .line 60
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->llJiePin:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvJiePin:Landroid/widget/TextView;

    .line 62
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->linearMain:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, v0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->tvWebUrl:Landroid/widget/TextView;

    return-void
.end method
