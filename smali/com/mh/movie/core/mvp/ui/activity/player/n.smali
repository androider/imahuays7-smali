.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/player/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/widget/LabelsView$c;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/n;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/n;->a:Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mh/movie/core/mvp/ui/activity/player/PlayerActivity;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    return-void
.end method
