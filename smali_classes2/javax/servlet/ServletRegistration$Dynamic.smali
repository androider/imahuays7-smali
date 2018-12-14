.class public interface abstract Ljavax/servlet/ServletRegistration$Dynamic;
.super Ljava/lang/Object;
.source "ServletRegistration.java"

# interfaces
.implements Ljavax/servlet/Registration$Dynamic;
.implements Ljavax/servlet/ServletRegistration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/servlet/ServletRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dynamic"
.end annotation


# virtual methods
.method public abstract setLoadOnStartup(I)V
.end method

.method public abstract setMultipartConfig(Ljavax/servlet/MultipartConfigElement;)V
.end method

.method public abstract setRunAsRole(Ljava/lang/String;)V
.end method

.method public abstract setServletSecurity(Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/ServletSecurityElement;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
