.class Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$a;
.super Ljava/lang/Object;
.source "SwitchVideoTypeDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;


# direct methods
.method private constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$a;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$a;-><init>(Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 69
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$a;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->dismiss()V

    .line 70
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$a;->a:Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;->a(Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog;)Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/SwitchVideoTypeDialog$b;->a(I)V

    return-void
.end method
