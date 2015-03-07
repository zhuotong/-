//把包含import com.zhuo.tong.news.R的行删除
sed -i '/import com.zhuo.tong.news.R/'d PicNewsGridAdapter.java

//在以import开头的行后面添加一行import com.zhuo.tong.news.R；如果多匹配就添加多行
sed -i -e '/^import/a\import com.zhuo.tong.news.R;' PicNewsGridAdapter.java

//把文件中com.qianlong.android.替换为空
sed -i s/com.qianlong.android.//g PicNewsListAdapter.java


for id in `find *.java`; do
	sed -i s/com.qianlong.android.//g $id;
	sed -i -e '/^package/a\import com.zhuo.tong.news.R;' $id;
done

for id in `find . -name *.java`; do
	sed -i s/com.qianlong.android.//g $id;
	sed -i -e '/^package/a\import com.zhuo.tong.news.R;' $id;
done
