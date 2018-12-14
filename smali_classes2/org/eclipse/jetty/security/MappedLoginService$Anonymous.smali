.class public Lorg/eclipse/jetty/security/MappedLoginService$Anonymous;
.super Ljava/lang/Object;
.source "MappedLoginService.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/eclipse/jetty/security/MappedLoginService$UserPrincipal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/MappedLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Anonymous"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xf3b9a2abd7db8edL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Anonymous"

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
