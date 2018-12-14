.class public final Lcom/mh/movie/core/mvp/model/ar;
.super Ljava/lang/Object;
.source "LeaderBoardModel_MembersInjector.java"

# interfaces
.implements La/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b<",
        "Lcom/mh/movie/core/mvp/model/LeaderBoardModel;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/mh/movie/core/mvp/model/LeaderBoardModel;Landroid/app/Application;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/LeaderBoardModel;->c:Landroid/app/Application;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/model/LeaderBoardModel;Lcom/google/gson/e;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/LeaderBoardModel;->b:Lcom/google/gson/e;

    return-void
.end method
