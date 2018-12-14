.class public final Lcom/mh/movie/core/mvp/model/player/d;
.super Ljava/lang/Object;
.source "PlayerModel_MembersInjector.java"

# interfaces
.implements La/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b<",
        "Lcom/mh/movie/core/mvp/model/player/PlayerModel;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/mh/movie/core/mvp/model/player/PlayerModel;Landroid/app/Application;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->c:Landroid/app/Application;

    return-void
.end method

.method public static a(Lcom/mh/movie/core/mvp/model/player/PlayerModel;Lcom/google/gson/e;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/player/PlayerModel;->b:Lcom/google/gson/e;

    return-void
.end method
