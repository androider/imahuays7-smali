.class public Lorg/eclipse/jetty/servlet/Holder$HolderConfig;
.super Ljava/lang/Object;
.source "Holder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HolderConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/Holder;


# direct methods
.method protected constructor <init>(Lorg/eclipse/jetty/servlet/Holder;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/Holder$HolderConfig;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderConfig;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderConfig;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .line 306
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/Holder$HolderConfig;->this$0:Lorg/eclipse/jetty/servlet/Holder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/Holder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method
