.class public abstract Landroid/support/v4/app/SharedElementCallback;
.super Ljava/lang/Object;
.source "SharedElementCallback.java"


# static fields
.field private static final BUNDLE_SNAPSHOT_BITMAP:Ljava/lang/String; = "sharedElement:snapshot:bitmap"

.field private static final BUNDLE_SNAPSHOT_IMAGE_MATRIX:Ljava/lang/String; = "sharedElement:snapshot:imageMatrix"

.field private static final BUNDLE_SNAPSHOT_IMAGE_SCALETYPE:Ljava/lang/String; = "sharedElement:snapshot:imageScaleType"

.field private static MAX_IMAGE_SIZE:I


# instance fields
.field private mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/high16 v0, 0x100000

    sput v0, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 196
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 197
    .local v1, "height":I
    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    sget v2, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    int-to-float v2, v2

    mul-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 201
    .local v2, "scale":F
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    .line 203
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 205
    :cond_1
    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 206
    .local v3, "bitmapWidth":I
    int-to-float v4, v1

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 207
    .local v4, "bitmapHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 208
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 209
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 210
    .local v7, "existingBounds":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 211
    .local v8, "left":I
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 212
    .local v9, "top":I
    iget v10, v7, Landroid/graphics/Rect;->right:I

    .line 213
    .local v10, "right":I
    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    .line 214
    .local v11, "bottom":I
    const/4 v12, 0x0

    invoke-virtual {p0, v12, v12, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    return-object v5

    .line 198
    .end local v2    # "scale":F
    .end local v3    # "bitmapWidth":I
    .end local v4    # "bitmapHeight":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "existingBounds":Landroid/graphics/Rect;
    .end local v8    # "left":I
    .end local v9    # "top":I
    .end local v10    # "right":I
    .end local v11    # "bottom":I
    :cond_2
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 8
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .line 149
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 150
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 151
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 152
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 153
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 154
    invoke-static {v1}, Landroid/support/v4/app/SharedElementCallback;->createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 155
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 156
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "sharedElement:snapshot:bitmap"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    const-string v5, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 162
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/16 v6, 0x9

    new-array v6, v6, [F

    .line 163
    .local v6, "values":[F
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 164
    const-string v7, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 166
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v6    # "values":[F
    :cond_0
    return-object v4

    .line 170
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 171
    .local v0, "bitmapWidth":I
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 172
    .local v1, "bitmapHeight":I
    const/4 v2, 0x0

    .line 173
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-lez v0, :cond_3

    if-lez v1, :cond_3

    .line 174
    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Landroid/support/v4/app/SharedElementCallback;->MAX_IMAGE_SIZE:I

    int-to-float v4, v4

    mul-int v5, v0, v1

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 175
    .local v3, "scale":F
    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v0, v4

    .line 176
    int-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-int v1, v4

    .line 177
    iget-object v4, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_2

    .line 178
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    .line 180
    :cond_2
    iget-object v4, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 181
    iget-object v4, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    iget v5, p3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v6, p3, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 182
    iget-object v4, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 183
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 184
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    .local v4, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Landroid/support/v4/app/SharedElementCallback;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 186
    invoke-virtual {p1, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 188
    .end local v3    # "scale":F
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    return-object v2
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "view":Landroid/widget/ImageView;
    instance-of v1, p2, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 240
    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 241
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "sharedElement:snapshot:bitmap"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 242
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 243
    const/4 v3, 0x0

    return-object v3

    .line 245
    :cond_0
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 246
    .local v3, "imageView":Landroid/widget/ImageView;
    move-object v0, v3

    .line 247
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    const-string v4, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 250
    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v4, v5, :cond_1

    .line 251
    const-string v4, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v4

    .line 252
    .local v4, "values":[F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 253
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 254
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 256
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "values":[F
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_1
    goto :goto_0

    :cond_2
    instance-of v1, p2, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 257
    move-object v1, p2

    check-cast v1, Landroid/graphics/Bitmap;

    .line 258
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, v2

    .line 259
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method
