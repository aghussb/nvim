return {
	{
		pattern = "+layout.svelte",
		template = {
			'<script lang="ts">',
			"let { children } = $props();",
			"</script>",
			"",
			"{@render children()}",
		},
	},
	{
		pattern = "*.svelte",
		template = {
			'<script lang="ts">',
			"",
			"</script>",
		},
	},
	{
		pattern = "+page.ts",
		template = {
			"import type { PageLoad } from './$types';",
			"",
			"export const load:PageLoad = async () => {",
			"",
			"};",
		},
	},
	{
		pattern = "+page.server.ts",
		template = {
			"import type { PageServerLoad } from './$types';",
			"",
			"export const load:PageServerLoad = async () => {",
			"",
			"};",
		},
	},
	{
		pattern = "+layout.ts",
		template = {
			"import type { LayoutLoad } from './$types';",
			"",
			"export const load:LayoutLoad = async () => {",
			"",
			"};",
		},
	},
	{
		pattern = "+layout.server.ts",
		template = {
			"import type { LayoutServerLoad } from './$types';",
			"",
			"export const load:LayoutServerLoad = async () => {",
			"",
			"};",
		},
	},
}
