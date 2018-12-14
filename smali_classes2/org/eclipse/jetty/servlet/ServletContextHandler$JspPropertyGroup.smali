.class public Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;
.super Ljava/lang/Object;
.source "ServletContextHandler.java"

# interfaces
.implements Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JspPropertyGroup"
.end annotation


# instance fields
.field private _buffer:Ljava/lang/String;

.field private _defaultContentType:Ljava/lang/String;

.field private _deferredSyntaxAllowedAsLiteral:Ljava/lang/String;

.field private _elIgnored:Ljava/lang/String;

.field private _errorOnUndeclaredNamespace:Ljava/lang/String;

.field private _includeCodas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _includePreludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _isXml:Ljava/lang/String;

.field private _pageEncoding:Ljava/lang/String;

.field private _scriptingInvalid:Ljava/lang/String;

.field private _trimDirectiveWhitespaces:Ljava/lang/String;

.field private _urlPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_urlPatterns:Ljava/util/List;

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addIncludeCoda(Ljava/lang/String;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addIncludePrelude(Ljava/lang/String;)V
    .locals 1

    .line 638
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addUrlPattern(Ljava/lang/String;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_urlPatterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_urlPatterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBuffer()Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_buffer:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultContentType()Ljava/lang/String;
    .locals 1

    .line 677
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_defaultContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeferredSyntaxAllowedAsLiteral()Ljava/lang/String;
    .locals 1

    .line 661
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_deferredSyntaxAllowedAsLiteral:Ljava/lang/String;

    return-object v0
.end method

.method public getElIgnored()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_elIgnored:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorOnUndeclaredNamespace()Ljava/lang/String;
    .locals 1

    .line 693
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_errorOnUndeclaredNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeCodas()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getIncludePreludes()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getIsXml()Ljava/lang/String;
    .locals 1

    .line 625
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_isXml:Ljava/lang/String;

    return-object v0
.end method

.method public getPageEncoding()Ljava/lang/String;
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_pageEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptingInvalid()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_scriptingInvalid:Ljava/lang/String;

    return-object v0
.end method

.method public getTrimDirectiveWhitespaces()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_trimDirectiveWhitespaces:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlPatterns()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_urlPatterns:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setBuffer(Ljava/lang/String;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_buffer:Ljava/lang/String;

    return-void
.end method

.method public setDefaultContentType(Ljava/lang/String;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_defaultContentType:Ljava/lang/String;

    return-void
.end method

.method public setDeferredSyntaxAllowedAsLiteral(Ljava/lang/String;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_deferredSyntaxAllowedAsLiteral:Ljava/lang/String;

    return-void
.end method

.method public setElIgnored(Ljava/lang/String;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_elIgnored:Ljava/lang/String;

    return-void
.end method

.method public setErrorOnUndeclaredNamespace(Ljava/lang/String;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_errorOnUndeclaredNamespace:Ljava/lang/String;

    return-void
.end method

.method public setIsXml(Ljava/lang/String;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_isXml:Ljava/lang/String;

    return-void
.end method

.method public setPageEncoding(Ljava/lang/String;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_pageEncoding:Ljava/lang/String;

    return-void
.end method

.method public setScriptingInvalid(Ljava/lang/String;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_scriptingInvalid:Ljava/lang/String;

    return-void
.end method

.method public setTrimDirectiveWhitespaces(Ljava/lang/String;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_trimDirectiveWhitespaces:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 698
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "JspPropertyGroupDescriptor:"

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " el-ignored="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_elIgnored:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " is-xml="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_isXml:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " page-encoding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_pageEncoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " scripting-invalid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_scriptingInvalid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " deferred-syntax-allowed-as-literal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_deferredSyntaxAllowedAsLiteral:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " trim-directive-whitespaces"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_trimDirectiveWhitespaces:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " default-content-type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_defaultContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " buffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " error-on-undeclared-namespace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_errorOnUndeclaredNamespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " include-prelude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 711
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " include-coda="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 713
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
