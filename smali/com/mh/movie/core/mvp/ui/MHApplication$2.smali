.class Lcom/mh/movie/core/mvp/ui/MHApplication$2;
.super Ljava/lang/Object;
.source "MHApplication.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/ForegroundCallbacks$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/MHApplication;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/MHApplication;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/MHApplication;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/MHApplication$2;->a:Lcom/mh/movie/core/mvp/ui/MHApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/MHApplication;->b:Z

    .line 260
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b()V

    return-void
.end method

.method public onBecameForeground()V
    .locals 1

    const/4 v0, 0x1

    .line 252
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/MHApplication;->b:Z

    .line 253
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->a()V

    return-void
.end method
