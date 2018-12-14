.class public Lorg/eclipse/jetty/servlet/ServletMapping;
.super Ljava/lang/Object;
.source "ServletMapping.java"


# instance fields
.field private _default:Z

.field private _pathSpecs:[Ljava/lang/String;

.field private _servletName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "\n"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public getPathSpecs()[Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_servletName:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_default:Z

    return v0
.end method

.method public setDefault(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_default:Z

    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    return-void
.end method

.method public setPathSpecs([Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_servletName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "[]"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_pathSpecs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletMapping;->_servletName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
