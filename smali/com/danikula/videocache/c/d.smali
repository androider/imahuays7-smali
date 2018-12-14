.class public Lcom/danikula/videocache/c/d;
.super Ljava/lang/Object;
.source "SourceInfoStorageFactory.java"


# direct methods
.method public static a()Lcom/danikula/videocache/c/c;
    .locals 1

    .line 17
    new-instance v0, Lcom/danikula/videocache/c/b;

    invoke-direct {v0}, Lcom/danikula/videocache/c/b;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/danikula/videocache/c/c;
    .locals 1

    .line 13
    new-instance v0, Lcom/danikula/videocache/c/a;

    invoke-direct {v0, p0}, Lcom/danikula/videocache/c/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
