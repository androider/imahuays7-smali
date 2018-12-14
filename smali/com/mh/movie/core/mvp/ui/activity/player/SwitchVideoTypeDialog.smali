.class public Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;
.super Landroid/app/Dialog;
.source "SwitchVideoTypeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$a;,
        Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/mh/movie/core/mvp/ui/activity/player/z;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/ui/activity/player/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    sget v0, Lcom/mh/movie/core/R$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->b:Landroid/widget/ListView;

    .line 26
    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->c:Landroid/widget/ArrayAdapter;

    .line 38
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;)Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->d:Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/ui/activity/player/z;",
            ">;",
            "Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;",
            ")V"
        }
    .end annotation

    .line 47
    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->d:Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;

    .line 48
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->e:Ljava/util/List;

    .line 50
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 51
    sget v0, Lcom/mh/movie/core/R$layout;->switch_video_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    sget v0, Lcom/mh/movie/core/R$id;->switch_dialog_list:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->b:Landroid/widget/ListView;

    .line 53
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->setContentView(Landroid/view/View;)V

    .line 54
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->a:Landroid/content/Context;

    sget v2, Lcom/mh/movie/core/R$layout;->switch_video_dialog_item:I

    invoke-direct {p2, v0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->c:Landroid/widget/ArrayAdapter;

    .line 55
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->b:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->c:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->b:Landroid/widget/ListView;

    new-instance p2, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$a;

    invoke-direct {p2, p0, v1}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 60
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
