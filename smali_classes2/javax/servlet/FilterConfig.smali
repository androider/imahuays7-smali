.class public interface abstract Ljavax/servlet/FilterConfig;
.super Ljava/lang/Object;
.source "FilterConfig.java"


# virtual methods
.method public abstract getFilterName()Ljava/lang/String;
.end method

.method public abstract getInitParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInitParameterNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServletContext()Ljavax/servlet/ServletContext;
.end method
