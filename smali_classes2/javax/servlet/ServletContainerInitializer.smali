.class public interface abstract Ljavax/servlet/ServletContainerInitializer;
.super Ljava/lang/Object;
.source "ServletContainerInitializer.java"


# virtual methods
.method public abstract onStartup(Ljava/util/Set;Ljavax/servlet/ServletContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljavax/servlet/ServletContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation
.end method
