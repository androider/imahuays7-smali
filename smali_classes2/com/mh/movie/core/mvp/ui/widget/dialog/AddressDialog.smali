.class public Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;
.super Landroid/app/Dialog;
.source "AddressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

.field public b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/AddressEntity;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field f:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    sget v0, Lcom/mh/movie/core/R$style;->Dialog_FS:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 56
    sget v0, Lcom/mh/movie/core/R$id;->wv_address_province:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    .line 57
    sget v0, Lcom/mh/movie/core/R$id;->wv_address_city:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    .line 58
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jess/arms/c/e;->b(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 59
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setWidth(I)V

    .line 60
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setWidth(I)V

    .line 61
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->a()V

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setOffset(I)V

    .line 65
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$1;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;)V

    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setOnWheelViewListener(Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;)V

    .line 82
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->c:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->a:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->c:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setItems(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->d:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setOffset(I)V

    .line 90
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setOnWheelViewListener(Lcom/mh/movie/core/mvp/ui/widget/WheelView$a;)V

    .line 101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->b:Lcom/mh/movie/core/mvp/ui/widget/WheelView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->getCity()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/WheelView;->setItems(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/AddressEntity;->getCity()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->e:Ljava/lang/String;

    .line 104
    sget v0, Lcom/mh/movie/core/R$id;->tv_address_cancel:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/a;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/a;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v0, Lcom/mh/movie/core/R$id;->tv_address_ok:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/b;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/b;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "info_city.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 117
    new-array v1, v1, [B

    .line 118
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 119
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 120
    new-instance v0, Ljava/lang/String;

    const-string v2, "utf8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 121
    new-instance v1, Lcom/google/gson/e;

    invoke-direct {v1}, Lcom/google/gson/e;-><init>()V

    new-instance v2, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$3;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$3;-><init>(Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;)V

    .line 122
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->c:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$a;

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$a;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->f:Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog$a;

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget p1, Lcom/mh/movie/core/R$layout;->dialog_address:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 48
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x50

    .line 49
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/AddressDialog;->b()V

    return-void
.end method
