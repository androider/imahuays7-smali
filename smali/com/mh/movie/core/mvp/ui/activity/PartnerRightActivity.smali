.class public Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/ac;
.source "PartnerRightActivity.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/a/al$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/ac<",
        "Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;",
        ">;",
        "Lcom/mh/movie/core/mvp/a/al$b;"
    }
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/mh/movie/core/mvp/ui/adapter/c;

.field ivQrcode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c017e
    .end annotation
.end field

.field ivShareSubmit:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c018b
    .end annotation
.end field

.field rvPartnerList:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c030a
    .end annotation
.end field

.field topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0380
    .end annotation
.end field

.field tvDesc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0472
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0473
    .end annotation
.end field

.field tvPartnerBack:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0c0415
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/ac;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->d:I

    return-void
.end method

.method private e()V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->r:Landroid/content/Context;

    sget v1, Lcom/mh/movie/core/R$color;->white:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/mh/movie/core/mvp/ui/utils/UIUtils;->setImmersiveStatusBar(Landroid/app/Activity;ZI)V

    .line 97
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->tvName:Landroid/widget/TextView;

    sget v2, Lcom/mh/movie/core/R$string;->system_name:I

    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "system_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->tvDesc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "system_desc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->rvPartnerList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->r:Landroid/content/Context;

    invoke-direct {v1, v2, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    .line 114
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->rvPartnerList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "open_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pro_id_prefix"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->J:Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserInfoResponse;->getInvitationCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->c:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->c:Ljava/lang/String;

    sget v1, Lcom/mh/movie/core/R$mipmap;->icon:I

    invoke-static {p0, v1}, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->getBitmapFromResources(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x76

    invoke-static {v0, v2, v1}, Lcom/mh/movie/core/mvp/ui/utils/QRCode;->createQRCodeWithLogo(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->ivQrcode:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->tvPartnerBack:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 123
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->tvPartnerBack:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->topbar:Lcom/mh/movie/core/mvp/ui/widget/Topbar;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/aj;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/aj;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/Topbar;->setLeftBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->ivShareSubmit:Landroid/widget/ImageView;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/ak;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/ak;-><init>(Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "system_id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/presenter/PartnerRightPresenter;->a(I)V

    return-void
.end method

.method private f()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    sget p1, Lcom/mh/movie/core/R$layout;->activity_partner_right:I

    return p1
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->f()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-static {}, Lcom/mh/movie/core/a/a/aw;->a()Lcom/mh/movie/core/a/a/aw$a;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/aw$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/aw$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/cv;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/cv;-><init>(Lcom/mh/movie/core/mvp/a/al$b;)V

    .line 79
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/aw$a;->a(Lcom/mh/movie/core/a/b/cv;)Lcom/mh/movie/core/a/a/aw$a;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/aw$a;->a()Lcom/mh/movie/core/a/a/cu;

    move-result-object p1

    .line 81
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/cu;->a(Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->e:Lcom/mh/movie/core/mvp/ui/adapter/c;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/TaxRateResponse;->getRules()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/adapter/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->e()V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/PartnerRightActivity;->onBackPressed()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e_()V
    .locals 0

    return-void
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/ac;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method
