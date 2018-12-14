.class public interface abstract Lio/victoralbertos/jolyglot/JolyglotGenerics;
.super Ljava/lang/Object;
.source "JolyglotGenerics.java"

# interfaces
.implements Lio/victoralbertos/jolyglot/Jolyglot;


# virtual methods
.method public abstract arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
.end method

.method public abstract fromJson(Ljava/io/File;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public varargs abstract newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
.end method

.method public abstract toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
.end method
