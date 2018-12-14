.class public Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;
.super Ljava/lang/Object;
.source "ServletContextHandler.java"

# interfaces
.implements Ljavax/servlet/descriptor/TaglibDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagLib"
.end annotation


# instance fields
.field private _location:Ljava/lang/String;

.field private _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaglibLocation()Ljava/lang/String;
    .locals 1

    .line 741
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_location:Ljava/lang/String;

    return-object v0
.end method

.method public getTaglibURI()Ljava/lang/String;
    .locals 1

    .line 728
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method public setTaglibLocation(Ljava/lang/String;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_location:Ljava/lang/String;

    return-void
.end method

.method public setTaglibURI(Ljava/lang/String;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TagLibDescriptor: taglib-uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
