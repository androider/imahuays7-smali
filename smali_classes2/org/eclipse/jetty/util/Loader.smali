.class public Lorg/eclipse/jetty/util/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassPath(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eqz p0, :cond_3

    .line 171
    instance-of v1, p0, Ljava/net/URLClassLoader;

    if-eqz v1, :cond_3

    .line 173
    move-object v1, p0

    check-cast v1, Ljava/net/URLClassLoader;

    invoke-virtual {v1}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 176
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 178
    aget-object v3, v1, v2

    invoke-static {v3}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 183
    sget-char v4, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_3

    :cond_2
    move-object p0, v1

    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :goto_1
    if-nez v0, :cond_4

    if-eqz p0, :cond_4

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 63
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    .line 68
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static getResourceBundle(Ljava/lang/Class;Ljava/lang/String;ZLjava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v1

    move-object v3, v0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 135
    :try_start_0
    invoke-static {p1, p3, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_1

    :catch_0
    move-exception v4

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 137
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    if-nez p0, :cond_4

    :cond_3
    move-object p0, v1

    goto :goto_2

    .line 140
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :goto_2
    if-nez v0, :cond_6

    if-eqz p0, :cond_6

    .line 143
    :try_start_1
    invoke-static {p1, p3, p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception v2

    if-nez v3, :cond_5

    move-object v3, v2

    :cond_5
    :goto_3
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 145
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    .line 150
    :try_start_2
    invoke-static {p1, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p0
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, p0

    goto :goto_4

    :catch_2
    move-exception p0

    if-nez v3, :cond_7

    move-object v3, p0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    return-object v0

    .line 156
    :cond_8
    throw v3
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, p1, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v0, v1

    move-object v3, v0

    :goto_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    .line 100
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_1

    :catch_0
    move-exception v4

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    if-nez p0, :cond_4

    :cond_3
    move-object p0, v1

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :goto_2
    if-nez v0, :cond_6

    if-eqz p0, :cond_6

    .line 108
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception v2

    if-nez v3, :cond_5

    move-object v3, v2

    :cond_5
    :goto_3
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 110
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    .line 115
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, p0

    goto :goto_4

    :catch_2
    move-exception p0

    if-nez v3, :cond_7

    move-object v3, p0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    return-object v0

    .line 121
    :cond_8
    throw v3
.end method
