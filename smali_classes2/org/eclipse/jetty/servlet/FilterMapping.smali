.class public Lorg/eclipse/jetty/servlet/FilterMapping;
.super Ljava/lang/Object;
.source "FilterMapping.java"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# static fields
.field public static final ALL:I = 0x1f

.field public static final ASYNC:I = 0x10

.field public static final DEFAULT:I = 0x0

.field public static final ERROR:I = 0x8

.field public static final FORWARD:I = 0x2

.field public static final INCLUDE:I = 0x4

.field public static final REQUEST:I = 0x1


# instance fields
.field private _dispatches:I

.field private _filterName:Ljava/lang/String;

.field private transient _holder:Lorg/eclipse/jetty/servlet/FilterHolder;

.field private _pathSpecs:[Ljava/lang/String;

.field private _servletNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    return-void
.end method

.method public static dispatch(Ljavax/servlet/DispatcherType;)I
    .locals 2

    .line 67
    sget-object v0, Lorg/eclipse/jetty/servlet/FilterMapping$1;->$SwitchMap$javax$servlet$DispatcherType:[I

    invoke-virtual {p0}, Ljavax/servlet/DispatcherType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljavax/servlet/DispatcherType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/16 p0, 0x10

    return p0

    :pswitch_4
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dispatch(Ljava/lang/String;)Ljavax/servlet/DispatcherType;
    .locals 1

    const-string v0, "request"

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object p0, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    return-object p0

    :cond_0
    const-string v0, "forward"

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    sget-object p0, Ljavax/servlet/DispatcherType;->FORWARD:Ljavax/servlet/DispatcherType;

    return-object p0

    :cond_1
    const-string v0, "include"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object p0, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    return-object p0

    :cond_2
    const-string v0, "error"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    sget-object p0, Ljavax/servlet/DispatcherType;->ERROR:Ljavax/servlet/DispatcherType;

    return-object p0

    :cond_3
    const-string v0, "async"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    sget-object p0, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    return-object p0

    .line 59
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method appliesTo(I)Z
    .locals 3

    .line 124
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-eq p1, v2, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 125
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_holder:Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 126
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method appliesTo(Ljava/lang/String;I)Z
    .locals 3

    .line 106
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    array-length v1, v1

    if-ge p2, v1, :cond_1

    .line 109
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    aget-object v1, v1, p2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .line 274
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "\n"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_holder:Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathSpecs()[Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    return-object v0
.end method

.method public getServletNames()[Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    return-object v0
.end method

.method public setDispatcherTypes(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Ljavax/servlet/DispatcherType;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    if-eqz p1, :cond_4

    .line 162
    sget-object v0, Ljavax/servlet/DispatcherType;->ERROR:Ljavax/servlet/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 164
    :cond_0
    sget-object v0, Ljavax/servlet/DispatcherType;->FORWARD:Ljavax/servlet/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 166
    :cond_1
    sget-object v0, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 168
    :cond_2
    sget-object v0, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    iget v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    .line 170
    :cond_3
    sget-object v0, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 171
    iget p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    :cond_4
    return-void
.end method

.method public setDispatches(I)V
    .locals 0

    .line 186
    iput p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    return-void
.end method

.method setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_holder:Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 205
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    return-void
.end method

.method public setPathSpec(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 223
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    return-void
.end method

.method public setPathSpecs([Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 252
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    return-void
.end method

.method public setServletNames([Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_pathSpecs:[Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_servletNames:[Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_dispatches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterMapping;->_filterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
