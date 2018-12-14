.class public interface abstract Ljavax/servlet/FilterRegistration;
.super Ljava/lang/Object;
.source "FilterRegistration.java"

# interfaces
.implements Ljavax/servlet/Registration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/servlet/FilterRegistration$Dynamic;
    }
.end annotation


# virtual methods
.method public varargs abstract addMappingForServletNames(Ljava/util/EnumSet;Z[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/DispatcherType;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract addMappingForUrlPatterns(Ljava/util/EnumSet;Z[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/DispatcherType;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getServletNameMappings()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUrlPatternMappings()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
