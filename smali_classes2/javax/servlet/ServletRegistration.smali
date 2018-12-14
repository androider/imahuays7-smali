.class public interface abstract Ljavax/servlet/ServletRegistration;
.super Ljava/lang/Object;
.source "ServletRegistration.java"

# interfaces
.implements Ljavax/servlet/Registration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/servlet/ServletRegistration$Dynamic;
    }
.end annotation


# virtual methods
.method public varargs abstract addMapping([Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMappings()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunAsRole()Ljava/lang/String;
.end method
