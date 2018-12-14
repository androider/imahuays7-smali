.class public Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;
.super Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;
.source "WatchCauseEvent.java"


# instance fields
.field cause:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->cause:Ljava/lang/String;

    return-object v0
.end method

.method public setCause(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->cause:Ljava/lang/String;

    return-void
.end method
