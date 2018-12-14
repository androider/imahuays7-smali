.class public interface abstract Lorg/eclipse/jetty/server/Authentication$Deferred;
.super Ljava/lang/Object;
.source "Authentication.java"

# interfaces
.implements Lorg/eclipse/jetty/server/Authentication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/Authentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Deferred"
.end annotation


# virtual methods
.method public abstract authenticate(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;
.end method

.method public abstract authenticate(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/eclipse/jetty/server/Authentication;
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/Authentication;
.end method
