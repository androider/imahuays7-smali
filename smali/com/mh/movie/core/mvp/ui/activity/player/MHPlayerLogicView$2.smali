.class Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$2;
.super Ljava/lang/Object;
.source "MHPlayerLogicView.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/player/view/VideoDanmuGuideView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView$2;->a:Lcom/mh/movie/core/mvp/ui/activity/player/MHPlayerLogicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 259
    const-class v0, Lcom/mh/movie/core/mvp/ui/activity/user/QuickLoginActivity;

    invoke-static {v0}, Lcom/jess/arms/c/a;->a(Ljava/lang/Class;)V

    return-void
.end method
