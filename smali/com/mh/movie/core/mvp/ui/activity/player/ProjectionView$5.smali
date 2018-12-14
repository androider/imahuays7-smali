.class Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$5;
.super Ljava/lang/Object;
.source "ProjectionView.java"

# interfaces
.implements Lcom/mh/movie/core/androidupnp/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;I)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$5;->b:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iput p2, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 1

    .line 524
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "volume fail"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$5;->b:Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;

    iget v0, p0, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView$5;->a:I

    invoke-static {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;->b(Lcom/mh/movie/core/mvp/ui/activity/player/ProjectionView;I)I

    return-void
.end method

.method public b(Lcom/mh/movie/core/androidupnp/b/i;)V
    .locals 1

    .line 529
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "volume fail"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
