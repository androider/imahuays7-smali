.class final Lorg/eclipse/jetty/server/Authentication$3;
.super Ljava/lang/Object;
.source "Authentication.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication$Challenge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CHALLENGE"

    return-object v0
.end method
