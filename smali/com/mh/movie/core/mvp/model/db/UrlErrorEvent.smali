.class public Lcom/mh/movie/core/mvp/model/db/UrlErrorEvent;
.super Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;
.source "UrlErrorEvent.java"


# instance fields
.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/db/UrlErrorEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/db/UrlErrorEvent;->url:Ljava/lang/String;

    return-void
.end method
