.class public final Lcom/jess/arms/b/b/y;
.super Ljava/lang/Object;
.source "GlobalConfigModule_ProvideResponseErrorListenerFactory.java"

# interfaces
.implements La/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/b<",
        "Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/jess/arms/b/b/n;


# direct methods
.method public constructor <init>(Lcom/jess/arms/b/b/n;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jess/arms/b/b/y;->a:Lcom/jess/arms/b/b/n;

    return-void
.end method

.method public static a(Lcom/jess/arms/b/b/n;)Lcom/jess/arms/b/b/y;
    .locals 1

    .line 29
    new-instance v0, Lcom/jess/arms/b/b/y;

    invoke-direct {v0, p0}, Lcom/jess/arms/b/b/y;-><init>(Lcom/jess/arms/b/b/n;)V

    return-object v0
.end method


# virtual methods
.method public a()Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/jess/arms/b/b/y;->a:Lcom/jess/arms/b/b/n;

    .line 23
    invoke-virtual {v0}, Lcom/jess/arms/b/b/n;->f()Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 22
    invoke-static {v0, v1}, La/a/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/jess/arms/b/b/y;->a()Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    move-result-object v0

    return-object v0
.end method
