.class public Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;
.super Lcom/mh/movie/core/mvp/ui/activity/b;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/mh/movie/core/mvp/a/a/a$b;
.implements Lme/jessyan/autosize/internal/CancelAdapt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mh/movie/core/mvp/ui/activity/b<",
        "Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;",
        ">;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Lcom/mh/movie/core/mvp/a/a/a$b;",
        "Lme/jessyan/autosize/internal/CancelAdapt;"
    }
.end annotation


# static fields
.field public static f:Z = false


# instance fields
.field private A:Landroid/widget/CheckBox;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/CheckBox;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Landroid/widget/CheckBox;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Z

.field public d:Z

.field e:I

.field g:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

.field h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

.field i:Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

.field private l:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

.field private m:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

.field private n:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Landroid/support/v4/app/FragmentManager;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/CheckBox;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 79
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    const/4 v1, 0x5

    .line 112
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "recommend"

    aput-object v2, v1, v0

    const-string v2, "movice"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "tv"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "task"

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "my"

    const/4 v4, 0x4

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->t:Ljava/util/List;

    .line 113
    iput-boolean v3, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->u:Z

    .line 128
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->H:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    return-object p0
.end method

.method private m()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 196
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 198
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private n()V
    .locals 2

    .line 416
    sget v0, Lcom/mh/movie/core/R$id;->rl_main_recommend:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/a;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    sget v0, Lcom/mh/movie/core/R$id;->cb_main_recommend:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/b;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/b;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    sget v0, Lcom/mh/movie/core/R$id;->rl_main_tv:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/c;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/c;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    sget v0, Lcom/mh/movie/core/R$id;->cb_main_tv:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/d;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/d;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    sget v0, Lcom/mh/movie/core/R$id;->rl_main_task:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/e;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/e;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    sget v0, Lcom/mh/movie/core/R$id;->cb_main_task:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/f;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/f;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    sget v0, Lcom/mh/movie/core/R$id;->rl_main_my:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/g;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/g;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    sget v0, Lcom/mh/movie/core/R$id;->cb_main_my:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/h;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/h;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 558
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 559
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    if-ne v0, v1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 563
    :cond_0
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->c(I)V

    .line 564
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v1, ""

    const-string v2, "refresh_task_data"

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 567
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    const-class v2, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private p()V
    .locals 1

    const/4 v0, 0x1

    .line 582
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->c(I)V

    return-void
.end method

.method private q()V
    .locals 2

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/service/FileService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private r()V
    .locals 2

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mh/movie/core/mvp/ui/service/FileService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 604
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private s()V
    .locals 1

    .line 608
    sget v0, Lcom/mh/movie/core/R$id;->ll_content:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->v:Landroid/widget/LinearLayout;

    .line 609
    sget v0, Lcom/mh/movie/core/R$id;->air_playing:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->w:Landroid/widget/ImageView;

    .line 610
    sget v0, Lcom/mh/movie/core/R$id;->rl_main_recommend:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->x:Landroid/widget/RelativeLayout;

    .line 611
    sget v0, Lcom/mh/movie/core/R$id;->cb_main_recommend:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->y:Landroid/widget/CheckBox;

    .line 614
    sget v0, Lcom/mh/movie/core/R$id;->rl_main_tv:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->z:Landroid/widget/RelativeLayout;

    .line 615
    sget v0, Lcom/mh/movie/core/R$id;->cb_main_tv:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->A:Landroid/widget/CheckBox;

    .line 616
    sget v0, Lcom/mh/movie/core/R$id;->rl_main_task:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->B:Landroid/widget/RelativeLayout;

    .line 617
    sget v0, Lcom/mh/movie/core/R$id;->cb_main_task:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->C:Landroid/widget/CheckBox;

    .line 618
    sget v0, Lcom/mh/movie/core/R$id;->rl_main_my:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->D:Landroid/widget/RelativeLayout;

    .line 619
    sget v0, Lcom/mh/movie/core/R$id;->cb_main_my:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->E:Landroid/widget/CheckBox;

    .line 620
    sget v0, Lcom/mh/movie/core/R$id;->iv_message_new:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->F:Landroid/widget/ImageView;

    .line 621
    sget v0, Lcom/mh/movie/core/R$id;->iv_task_sign:I

    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->G:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 398
    sget p1, Lcom/mh/movie/core/R$layout;->activity_main:I

    return p1
.end method

.method public a(Landroid/support/v4/app/FragmentTransaction;)V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 501
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final synthetic a(Landroid/view/View;)V
    .locals 0

    .line 429
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h()V

    return-void
.end method

.method public a(Lcom/jess/arms/b/a/a;)V
    .locals 1
    .param p1    # Lcom/jess/arms/b/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 388
    invoke-static {}, Lcom/mh/movie/core/a/a/a/a;->a()Lcom/mh/movie/core/a/a/a/a$a;

    move-result-object v0

    .line 389
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/a/a/a/a$a;->a(Lcom/jess/arms/b/a/a;)Lcom/mh/movie/core/a/a/a/a$a;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/a/b/a/a;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/a/b/a/a;-><init>(Lcom/mh/movie/core/mvp/a/a/a$b;)V

    .line 390
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/a/a/a/a$a;->a(Lcom/mh/movie/core/a/b/a/a;)Lcom/mh/movie/core/a/a/a/a$a;

    move-result-object p1

    .line 391
    invoke-virtual {p1}, Lcom/mh/movie/core/a/a/a/a$a;->a()Lcom/mh/movie/core/a/a/a/b;

    move-result-object p1

    .line 392
    invoke-interface {p1, p0}, Lcom/mh/movie/core/a/a/a/b;->a(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;)V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-direct {v0, p0, p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    .line 249
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$1;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;->show()V

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f()V

    .line 262
    :goto_0
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/ChannelResponse;->isUpAppLog()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->m()Ljava/util/List;

    move-result-object p1

    .line 264
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    .line 265
    invoke-virtual {v0, p1}, Lcom/google/gson/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[]"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 267
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->u:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse;)V
    .locals 9

    .line 341
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;

    .line 342
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 343
    iget-object v4, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    const-string v5, "user_message_time_system"

    invoke-static {v4, v5}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    iget-object v5, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    const-string v6, "user_message_time_comment"

    invoke-static {v5, v6}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 345
    iget-object v6, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    const-string v7, "user_message_time_feed_back"

    invoke-static {v6, v7}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 346
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 347
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getMessageType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {v7}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 348
    sput-boolean v3, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f:Z

    .line 350
    :cond_1
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getMessageType()I

    move-result v7

    if-ne v7, v3, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {v7}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 351
    sput-boolean v3, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f:Z

    .line 353
    :cond_2
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getMessageType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;

    invoke-virtual {v7}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->getSendTimeStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 354
    sput-boolean v3, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f:Z

    :cond_3
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    .line 357
    sput-boolean v3, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f:Z

    .line 361
    :cond_4
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p:Ljava/lang/String;

    invoke-static {v3}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/ui/MHApplication;

    .line 363
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/ui/MHApplication;->b()Ljava/util/List;

    move-result-object v3

    .line 364
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;

    if-eqz v4, :cond_5

    .line 365
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 366
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getMessageType()I

    move-result v5

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getMessageType()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 367
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 375
    :cond_6
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 376
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/MHApplication;

    .line 377
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/MHApplication;->a(Ljava/util/List;)V

    .line 380
    :cond_7
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->F:Landroid/widget/ImageView;

    sget-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f:Z

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    sget-boolean v1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->f:Z

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;->b(Z)V

    .line 382
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse;->getLastTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->G:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 479
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->u:Z

    if-nez v0, :cond_0

    .line 480
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->u:Z

    .line 485
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->q:Landroid/support/v4/app/FragmentManager;

    .line 486
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->q:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 487
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->a(Landroid/support/v4/app/FragmentTransaction;)V

    .line 489
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    .line 490
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    .line 491
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 492
    sget v1, Lcom/mh/movie/core/R$id;->ll_content:I

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->t:Ljava/util/List;

    iget v3, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 494
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 495
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 404
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->s()V

    .line 405
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->y:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->A:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->C:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->E:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->c(Landroid/os/Bundle;)V

    .line 411
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->n()V

    return-void
.end method

.method final synthetic b(Landroid/view/View;)V
    .locals 0

    .line 428
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h()V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    .line 540
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 543
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->b(I)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->k:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->k:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->l:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    if-nez v0, :cond_1

    .line 444
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->l:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->m:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    if-nez v0, :cond_2

    .line 447
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->m:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->n:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    if-nez v0, :cond_3

    .line 450
    new-instance v0, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;-><init>()V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->n:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    :cond_3
    if-eqz p1, :cond_4

    .line 453
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->q:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_4

    const-string v0, "index"

    .line 454
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    .line 455
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->q:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->t:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->k:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    .line 457
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->q:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->t:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->l:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    .line 458
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->q:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->t:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->m:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    .line 459
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->q:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->t:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->n:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    .line 462
    :cond_4
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 463
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->k:Lcom/mh/movie/core/mvp/ui/fragment/MainFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->l:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->m:Lcom/mh/movie/core/mvp/ui/fragment/TaskFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o:Ljava/util/List;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->n:Lcom/mh/movie/core/mvp/ui/fragment/MyFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->b(I)V

    return-void
.end method

.method final synthetic c(Landroid/view/View;)V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o()V

    return-void
.end method

.method public c_(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 510
    invoke-static {p1}, Lcom/jess/arms/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-static {p1}, Lcom/jess/arms/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic d(Landroid/view/View;)V
    .locals 0

    .line 425
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o()V

    return-void
.end method

.method final synthetic e(Landroid/view/View;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p()V

    return-void
.end method

.method public f()V
    .locals 5

    .line 276
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->d:Z

    if-nez v0, :cond_1

    sget v0, Lcom/mh/movie/core/mvp/ui/b;->H:I

    if-lez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 279
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u65b0\u624b\u5956\u52b1"

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const-string v1, "\u606d\u559c\u4f60\u83b7\u5f97\u65b0\u4f1a\u5458\u5956\u52b1:%s\u9ebb\u82b1\u5e01\uff0c\u9ebb\u82b1\u5e01\u53ef\u4ee5\u5151\u6362\u7279\u6743\u548c\u5956\u54c1\u54e6\uff01"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/mh/movie/core/mvp/ui/b;->H:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    new-instance v1, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity$2;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    #invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->g()V

    :goto_0
    return-void
.end method

.method final synthetic f(Landroid/view/View;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p()V

    return-void
.end method

.method public g()V
    .locals 2

    .line 304
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->O:Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;

    if-eqz v0, :cond_1

    .line 306
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->i:Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/response/NoticeResponse;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->i:Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->i:Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;->show()V

    :cond_1
    return-void
.end method

.method final synthetic g(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 417
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->c(I)V

    return-void
.end method

.method public h()V
    .locals 4

    .line 586
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->d:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 587
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    if-ne v0, v1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 591
    :cond_0
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v2, ""

    const-string v3, "updateUserInfo"

    invoke-virtual {v0, v2, v3}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    const-string v2, ""

    const-string v3, "update_money"

    invoke-virtual {v0, v2, v3}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->c(I)V

    return-void
.end method

.method final synthetic h(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 416
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->c(I)V

    return-void
.end method

.method public k()V
    .locals 5

    .line 631
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->H:Z

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 634
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->H:Z

    .line 635
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mh/movie/core/mvp/ui/activity/main/i;

    invoke-direct {v2, p0}, Lcom/mh/movie/core/mvp/ui/activity/main/i;-><init>(Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    move-result-object v1

    iput-boolean v0, v1, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->k:Z

    .line 637
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u9ebb\u82b1\u5f71\u89c6"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method final synthetic l()V
    .locals 1

    const/4 v0, 0x0

    .line 635
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->H:Z

    return-void
.end method

.method public loginOut(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "login_out"
    .end annotation

    const-string p1, ""

    .line 327
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p:Ljava/lang/String;

    .line 328
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->e()V

    return-void
.end method

.method public loginSuccess(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "login_success"
    .end annotation

    const-string p1, ""

    .line 321
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p:Ljava/lang/String;

    .line 322
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->e()V

    return-void
.end method

.method public makeMokey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "make_money"
    .end annotation

    .line 315
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->o()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 232
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->l:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->l:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 626
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->k()V

    return-void
.end method

.method public onClick()V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0c0031
        }
    .end annotation

    const-string v0, "onnn"

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clcik====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/mh/movie/core/mvp/ui/b;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget v0, Lcom/mh/movie/core/mvp/ui/b;->B:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 551
    sget v0, Lcom/mh/movie/core/mvp/ui/b;->A:I

    mul-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;III)V

    goto :goto_0

    .line 553
    :cond_0
    sget-object v3, Lcom/mh/movie/core/mvp/presenter/player/ScreeningPresenter;->e:Ljava/lang/String;

    sget v4, Lcom/mh/movie/core/mvp/ui/b;->A:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->C:I

    const/4 v8, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/mh/movie/core/mvp/presenter/player/PlayerPresenter;->a(Landroid/content/Context;Ljava/lang/String;IIIIZ)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 135
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    .line 136
    sget-object p1, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->d:Z

    .line 137
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object p1

    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/MHApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/androidupnp/a;->a(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->q()V

    .line 141
    new-instance p1, Lcom/flurry/android/FlurryAgent$Builder;

    invoke-direct {p1}, Lcom/flurry/android/FlurryAgent$Builder;-><init>()V

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, v0}, Lcom/flurry/android/FlurryAgent$Builder;->withLogEnabled(Z)Lcom/flurry/android/FlurryAgent$Builder;

    move-result-object p1

    const-wide/16 v1, 0x2710

    .line 143
    invoke-virtual {p1, v1, v2}, Lcom/flurry/android/FlurryAgent$Builder;->withContinueSessionMillis(J)Lcom/flurry/android/FlurryAgent$Builder;

    move-result-object p1

    .line 144
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getFlurryKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/flurry/android/FlurryAgent$Builder;->build(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V

    .line 147
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast p1, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->f()V

    .line 148
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    const-string v0, "screen_width"

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    invoke-static {v1}, Lcom/jess/arms/c/e;->b(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r()V

    .line 222
    invoke-static {}, Lcom/mh/movie/core/androidupnp/a;->a()Lcom/mh/movie/core/androidupnp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/androidupnp/a;->b()V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->g:Lcom/mh/movie/core/mvp/ui/widget/dialog/ApkDialog;

    .line 224
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->h:Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    .line 225
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->i:Lcom/mh/movie/core/mvp/ui/widget/dialog/NoticeDialog;

    .line 226
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 239
    invoke-super {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/b;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 529
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    .line 530
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->c(I)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 154
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->onResume()V

    .line 156
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->i:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/jess/arms/c/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->d:Z

    .line 158
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->w:Landroid/widget/ImageView;

    sget v1, Lcom/mh/movie/core/mvp/ui/b;->A:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, ""

    .line 160
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p:Ljava/lang/String;

    invoke-static {v3}, Lcom/raizlabs/android/dbflow/a;->b(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->a(Ljava/lang/String;I)V

    .line 163
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/q;

    new-array v1, v2, [Lcom/raizlabs/android/dbflow/sql/language/a/a;

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;-><init>([Lcom/raizlabs/android/dbflow/sql/language/a/a;)V

    const-class v1, Lcom/mh/movie/core/mvp/model/db/TableTask;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/q;->a(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/h;

    move-result-object v0

    new-array v1, v4, [Lcom/raizlabs/android/dbflow/sql/language/o;

    sget-object v3, Lcom/mh/movie/core/mvp/model/db/TableTask_Table;->authId:Lcom/raizlabs/android/dbflow/sql/language/a/b;

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/raizlabs/android/dbflow/sql/language/a/b;->b(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/m;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/language/h;->a([Lcom/raizlabs/android/dbflow/sql/language/o;)Lcom/raizlabs/android/dbflow/sql/language/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/db/TableTask;

    if-eqz v0, :cond_2

    .line 165
    iget v0, v0, Lcom/mh/movie/core/mvp/model/db/TableTask;->compleStatus:I

    if-ne v0, v4, :cond_1

    .line 166
    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->a(Z)V

    goto :goto_1

    .line 168
    :cond_1
    invoke-virtual {p0, v4}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->a(Z)V

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {p0, v4}, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->a(Z)V

    .line 174
    :goto_1
    invoke-static {p0}, Lcom/mh/movie/core/mvp/ui/utils/TimeUtils;->canRetryAfter1Hour(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->b:Lcom/jess/arms/mvp/b;

    check-cast v0, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/presenter/main/MainPresenter;->f()V

    .line 177
    :cond_3
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/b;->y:Z

    if-eqz v0, :cond_4

    .line 178
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/b;->c:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/b;->d:Z

    if-eqz v0, :cond_4

    .line 179
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/PartnerDialog;->show()V

    .line 181
    sput-boolean v2, Lcom/mh/movie/core/mvp/ui/b;->d:Z

    .line 182
    sput-boolean v4, Lcom/mh/movie/core/mvp/ui/b;->c:Z

    .line 183
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    const-string v1, "is_first_partner"

    invoke-static {v0, v1, v4}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const-string v0, "index"

    .line 474
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 209
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->onStart()V

    .line 210
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 215
    invoke-super {p0}, Lcom/mh/movie/core/mvp/ui/activity/b;->onStop()V

    .line 216
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public signupSuccess(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "sign_up_success"
    .end annotation

    const-string p1, ""

    .line 333
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->p:Ljava/lang/String;

    .line 334
    sget p1, Lcom/mh/movie/core/mvp/ui/b;->H:I

    if-lez p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/main/MainActivity;->r:Landroid/content/Context;

    const-string v0, "\u65b0\u624b\u5956\u52b1"

    const-string v1, "\u606d\u559c\u4f60\u83b7\u5f97\u65b0\u4f1a\u5458\u5956\u52b1\uff1a%s\u9ebb\u82b1\u5e01\uff0c\u5feb\u53bb\u770b\u770b\u5427\uff01"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/mh/movie/core/mvp/ui/b;->H:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/CustomToast;->makeTitleText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
