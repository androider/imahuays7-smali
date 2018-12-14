.class public Lorg/eclipse/jetty/servlet/ServletHolder$Config;
.super Lorg/eclipse/jetty/servlet/Holder$HolderConfig;
.source "ServletHolder.java"

# interfaces
.implements Ljavax/servlet/ServletConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder<",
        "Ljavax/servlet/Servlet;",
        ">.HolderConfig;",
        "Ljavax/servlet/ServletConfig;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHolder;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Config;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderConfig;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public getServletName()Ljava/lang/String;
    .locals 1

    .line 745
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Config;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
