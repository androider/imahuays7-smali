.class public Lorg/eclipse/jetty/security/SecurityHandler$NotChecked;
.super Ljava/lang/Object;
.source "SecurityHandler.java"

# interfaces
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/SecurityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotChecked"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/security/SecurityHandler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/security/SecurityHandler;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lorg/eclipse/jetty/security/SecurityHandler$NotChecked;->this$0:Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;
    .locals 1

    .line 640
    iget-object v0, p0, Lorg/eclipse/jetty/security/SecurityHandler$NotChecked;->this$0:Lorg/eclipse/jetty/security/SecurityHandler;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NOT CHECKED"

    return-object v0
.end method
