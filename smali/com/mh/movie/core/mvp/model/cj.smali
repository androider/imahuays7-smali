.class public final Lcom/mh/movie/core/mvp/model/cj;
.super Ljava/lang/Object;
.source "SearchModel_MembersInjector.java"

# interfaces
.implements La/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b<",
        "Lcom/mh/movie/core/mvp/model/SearchModel;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/mh/movie/core/mvp/model/SearchModel;Landroid/app/Application;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/SearchModel;->c:Landroid/app/Application;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/model/SearchModel;Lcom/google/gson/e;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/SearchModel;->b:Lcom/google/gson/e;

    return-void
.end method
