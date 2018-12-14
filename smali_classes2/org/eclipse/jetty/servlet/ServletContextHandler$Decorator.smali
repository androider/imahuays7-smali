.class public interface abstract Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
.super Ljava/lang/Object;
.source "ServletContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Decorator"
.end annotation


# virtual methods
.method public abstract decorateFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract decorateFilterInstance(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Filter;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract decorateListenerInstance(Ljava/util/EventListener;)Ljava/util/EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract decorateServletHolder(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract decorateServletInstance(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Servlet;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method

.method public abstract destroyFilterInstance(Ljavax/servlet/Filter;)V
.end method

.method public abstract destroyListenerInstance(Ljava/util/EventListener;)V
.end method

.method public abstract destroyServletInstance(Ljavax/servlet/Servlet;)V
.end method
