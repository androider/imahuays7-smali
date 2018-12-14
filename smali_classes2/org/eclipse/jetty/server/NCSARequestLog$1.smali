.class final Lorg/eclipse/jetty/server/NCSARequestLog$1;
.super Ljava/lang/ThreadLocal;
.source "NCSARequestLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/NCSARequestLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/NCSARequestLog$1;->initialValue()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/StringBuilder;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method
