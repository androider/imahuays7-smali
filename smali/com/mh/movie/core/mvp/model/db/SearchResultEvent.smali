.class public Lcom/mh/movie/core/mvp/model/db/SearchResultEvent;
.super Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;
.source "SearchResultEvent.java"


# instance fields
.field content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/SearchResultEvent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/SearchResultEvent;->content:Ljava/lang/String;

    return-void
.end method
