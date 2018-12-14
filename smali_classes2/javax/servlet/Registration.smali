.class public interface abstract Ljavax/servlet/Registration;
.super Ljava/lang/Object;
.source "Registration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/servlet/Registration$Dynamic;
    }
.end annotation


# virtual methods
.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getInitParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInitParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setInitParameters(Ljava/util/Map;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
