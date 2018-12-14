.class Lorg/eclipse/jetty/servlet/FilterHolder$Config;
.super Lorg/eclipse/jetty/servlet/Holder$HolderConfig;
.source "FilterHolder.java"

# interfaces
.implements Ljavax/servlet/FilterConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/FilterHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder<",
        "Ljavax/servlet/Filter;",
        ">.HolderConfig;",
        "Ljavax/servlet/FilterConfig;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/FilterHolder;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Config;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderConfig;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public getFilterName()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder$Config;->this$0:Lorg/eclipse/jetty/servlet/FilterHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/FilterHolder;->_name:Ljava/lang/String;

    return-object v0
.end method
